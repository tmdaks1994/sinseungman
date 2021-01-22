package org.edu.controller;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;


import org.edu.util.NaverLoginApi;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;

import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

@PropertySource("classpath:properties/sns.properties")
@Controller
public class NaverLoginController {
	/*
	 * 네이버 API서버로 보내는 인증 요청문을 구성하는 파라미터
	 * client_id : 네이버 App등록 후 발급받은 클라이언트 아이디
	 */

	@Value("${SnsClientID}")
	private String CLIENT_ID;
	@Value("${SnsClientSecret}")
	private String CLIENT_SECRET;
	@Value("${SnsCallbackUri}")
	private String REDIRECT_URI;
	//private final static String CLIENT_ID = "1Y_t6LNQULkOGQUbtFxE";
	//private final static String CLIENT_SECRET = "-------";
	//private final static String REDIRECT_URI = "http://127.0.0.1:8080/login_callback";
	private final static String SESSION_STATE = "oauth_state";
	/* 프로필 조회 API URL - 사용자 이름+사용자이메일 */
	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
	/* 네이버 아이디로 로그인 인증 url 생성 Method */
	
	public String getAuthorizationUrl(HttpSession session) {
		/* 세션 유효성 검증을 위하여 난수를 생성*/
		String state = generateRandomString();
		/* 생성한 난수 값을 session에 저장*/
		setSession(session,state);

		//Scribe외부모듈에서 제공하는 인증 URL생성 기능을 이용하여 네아로 인증 URL 생성
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.state(state)
				.build(NaverLoginApi.instance()); //instance바로 호출
		return oauthService.getAuthorizationUrl();
	}
	
	/* 네아로 Callback 처리 및 Access Token 구하기 메소드*/
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException {
		/*콜백 URL로 전달받은 센션검즘용 난수값과 세션에 저장되어 있는 값이 일치하는지 확인*/
		String sessionState = getSession(session);
		if(StringUtils.pathEquals(sessionState, state)) {
			OAuth20Service oauthService = new ServiceBuilder()
					.apiKey(CLIENT_ID)
					.apiSecret(CLIENT_SECRET)
					.callback(REDIRECT_URI)
					.state(state)
					.build(NaverLoginApi.instance());
			// Scribe외부모듈에서 제공하는 기능으로 네아로 AccessToken을 획득
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken; //인증받은 토큰정보를 리턴
		}
		return null; //조건이 맞지 않으면, null값을 반환
	}
	
	private String getSession(HttpSession session) {
		// http에서 session 값 가져오기
		
		return (String) session.getAttribute(SESSION_STATE);
	}

	private void setSession(HttpSession session, String state) {
		// http session클래스에 데이터 저장
		session.setAttribute(SESSION_STATE,state);
	}
	
	private String generateRandomString() {
		// 세션 유효성 검증을 위한 난수 생성기
		return UUID.randomUUID().toString();
	}
	
	public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException {
		
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.build(NaverLoginApi.instance());
		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
		oauthService.signRequest(oauthToken, request);
		Response response = request.send(); //Response 클래스는 Scribe외부모듈에서 임포트
		return response.getBody();
	}
}
