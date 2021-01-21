package org.edu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.inject.Inject;
import javax.net.ssl.SSLEngineResult.Status;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.edu.service.IF_MemberService;
import org.edu.vo.MemberVO;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class LoginController {
	
	@Inject
	private IF_MemberService memberService;
	
	@Inject
	private NaverLoginController naverLoginController;
	
	//로그인후 세션 처리 - 네이버 아이디로 로그인
	@RequestMapping(value="/login_callback",method= {RequestMethod.GET, RequestMethod.POST})
	public String login_callback(Model model, @RequestParam String code, @RequestParam String state, 
			HttpSession session, RedirectAttributes rdat) throws IOException, ParseException {
		// 토큰으로 사용할 변수 선언
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginController.getAccessToken(session, code, state);
		//네이버로 로그인한 사용자 정보(profile)을 가져오기		
		String apiResult = naverLoginController.getUserProfile(oauthToken); //이름, 이메일 자료
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;//jsonObj 파싱한 1차 데이터
		/** Json 데이터 구조
		 * apiResult json 구조
	    {"resultcode":"00",
	    "message":"success",
	    "response":{"id":"33666449","nickname":"shinn****","age":"20-29","gender":"M","email":"sh@naver.com","name":"\uc2e0\ubc94\ud638"}}
	    **/
		//위 1차 데이터를 response 키로 분리한 값
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		// 위 response_obj 파싱 분리
		String username = (String) response_obj.get("name");
		String useremail = (String) response_obj.get("email");
		String Status = (String) jsonObj.get("message");
		if(Status.equals("success")) {
			//강제로 스프링 시큐리티 권한 처리를 하게함
			List<SimpleGrantedAuthority> authorities = new ArrayList<>();
			authorities.add(new SimpleGrantedAuthority("ROLE_USER"));
			Authentication authentication = new UsernamePasswordAuthenticationToken(useremail, null, authorities);
			SecurityContextHolder.getContext().setAuthentication(authentication);
			//로그인 세션 변수 생성
			session.setAttribute("session_enabled", true);
			session.setAttribute("session_userid", useremail);
			session.setAttribute("session_levels", "ROLE_USER");
			session.setAttribute("session_username", username);
			session.setAttribute("session_type", "sns");
			rdat.addFlashAttribute("msg", "SNS 아이디 로그인");
		} else {
			rdat.addFlashAttribute("param.msg", "fail"); //login.jsp전용 메시지
			return "redirect:/login";
		}
		
		rdat.addFlashAttribute("msg", "네이버 아이디 로그인");
		return "redirect:/";
	}
	
	//로그인 후 세션 처리 - 스프링 시큐리티 로직일때
	@RequestMapping(value="/login_success",method=RequestMethod.GET)
	public String login_success(HttpServletRequest request, RedirectAttributes rdat) throws Exception {
		//세션 변수 만들기
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String userid = "";//네이버아이디로 로그인 때문에 로그인아이디를 생성해야 하기 때문에
		String levels = "";//권한이 들어갈 변수 선언
		Boolean enabled = false;
		Object principal = authentication.getPrincipal();
		if(principal instanceof UserDetails) {
			//네이버 아뒤 로그인 인증이 처리되는 로직
			enabled = ((UserDetails)principal).isEnabled();
		}
		//세션 정보(로그인 아이디,레벨,회원이름)
		HttpSession session = request.getSession(); //집안 단계에서 발생한 세션(로그인 절차로 생성된 세션)가져오는 절차
		if(enabled) { //인증처리기 true라면 아래에서 세션 등록 처리
			Collection<? extends GrantedAuthority>  authorities = authentication.getAuthorities();
			if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_ANONYMOUS")).findAny().isPresent())
			{levels = "ROLE_ANONYMOUS";}
			if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_USER,")).findAny().isPresent())
			{levels = "ROLE_USER,";}
			if(authorities.stream().filter(o -> o.getAuthority().equals("ROLE_ADMIN")).findAny().isPresent())
			{levels = "ROLE_ADMIN";}
			userid = ((UserDetails)principal).getUsername();
			//로그인 세션 저장 시작
			session.setAttribute("session_enabled", enabled);
			session.setAttribute("session_userid", userid);
			session.setAttribute("session_levels", levels);
			//상단은 스프링시큐리티가 기본제공 변수 하단에는 비즈니스 로직에 따라 개발쪽에서 발생신키는 세션변수 시작 
			MemberVO memberVO = memberService.readMember(userid);
			session.setAttribute("session_username", memberVO.getUser_name());
			session.setAttribute("session_type", "normal");
		}
		/* 네이버 아이디 로그인 때문에 추가 끝 */ 
		rdat.addFlashAttribute("msg", "로그인");
		return "redirect:/";
	}
	//사용자 홈페이지 로그인 접근 매핑
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String login(Model model, HttpSession session) throws Exception{
		//BCrypt암호화 match 메소드으로 확인
		/*
		String rawPassword = "1234";
		BCryptPasswordEncoder bcryptPasswordEncoder = new BCryptPasswordEncoder(10);
		String bcryptPassword = bcryptPasswordEncoder.encode("1234");//예, user02 -> 암호화 처리됨
		System.out.println(bcryptPassword);//테스트시 이 암호를 DB회원테이블에 입력. 
		System.out.println("2가지 스트링을 매칭 참,거짓: " + bcryptPasswordEncoder.matches(rawPassword, bcryptPassword));
		*/
		String naverAuthUrl= naverLoginController.getAuthorizationUrl(session);
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		//System.out.println("네이버:" + naverAuthUrl);
		//매개변수 session의 용도는 인증 Url 메소드에서 setSettion을 사용하기 위해 보내줌.
		model.addAttribute("url", naverAuthUrl);
		return "home/login";
	}
}
