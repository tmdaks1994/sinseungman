package org.edu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

//스프링에서 사용가능한 클래스를 bean이라고 하고, @Controller 클래스를 사용하면된다.
@Controller
public class AdminController {
	
	@RequestMapping(value="/admin/board/board_list",method=RequestMethod.GET)
	public String board_list() throws Exception {
		
		return "admin/board/board_list";
	}
	@RequestMapping(value="/admin/member/member_write",method=RequestMethod.POST)
	public String member_write_do() throws Exception {
		//GET방식의 폼 출력화면에서 데이터 전송받은 내용을 처리하는 바인딩.
		//DB베이스 입력/출력/삭제/수정 처리
		return "redirect:/admin/member/member_list"; //절대경로로 처리된 이후에 이동할 URL주소를 여기에 반환
	}
	@RequestMapping(value="/admin/member/member_write",method=RequestMethod.GET)
	public String member_write( ) throws Exception {
		return "admin/member/member_write";
	}
	/*member_list.jsp에서 보낸 데이터를 수신하는 역할 @Request(키값) Requestparameter 클래스 사용
	현재 컨트롤러 클래스에서 jsp로 데이터를 보내는 역할 model 클래스 사용.
	member_list -> @RequestParam("user_id")수신, Model송신 -> member_view.jsp*/
	@RequestMapping(value="/admin/member/member_view",method=RequestMethod.GET)
	public String member_view(@RequestParam("user_id") String user_id, Model model) throws Exception {
		//위에서  수신한 user_id를 member_view.jsp 보냅니다.
		model.addAttribute("user_id2", user_id + "<script>alert:('메롱');</script> 님");
		return "admin/member/member_view";
	}	
	@RequestMapping(value="/admin/member/member_list",method=RequestMethod.GET)
	public String member_list(Model model ) throws Exception {
		String[][] members = {
				{"admin","관리자","admin@abc.com","true","2020-12-04","ROLE_ADMIN"},
				{"user","사용자1","user@abc.com","false","2020-12-03","ROLE_USER"}
		};
		//{"user_id"}
		model.addAttribute("members", members);
		return "admin/member/member_list";
	}	
	//bind: 묶는다, /admin 요청경로와 admin/home.jsp를 묶는 의미
	@RequestMapping(value="/admin",method=RequestMethod.GET)
	public String admin() throws Exception {
		return "admin/home";
	}
}
