package org.edu.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.edu.dao.IF_BoardTypeDAO;
import org.edu.vo.BoardTypeVO;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice //컨트롤러에서 발생되는 CRUD액션을 중간에 가로채는 기능클래스
public class ControllerAdviceException {
	@Inject
	private IF_BoardTypeDAO boardTypeDAO;
	
	@ModelAttribute("board_type_list")
	public List<BoardTypeVO> board_type_list() throws Exception {
		List<BoardTypeVO> board_type_list = boardTypeDAO.select_board_type();
		return board_type_list;
	}
	
	//컨트롤러 매핑 걸린 모든 메소드에서 공통으로 사용할 modelAttribute 생성
	
	//ModelAndView클래스는 변환 jsp로 반환시 값을 저장하는 역할
	//언제아래 메소드가 명시하는 클래스
	@ExceptionHandler(Exception.class)
	public ModelAndView errorModelAndView(Exception ex, HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		//AdminController에서 사용된 model클래스는 jsp로 값을  보낼때
		//여기서 사용하는 modelAndview클래스는 jsp로값을 보내고 반환값으로 model값을 보낼 jsp도 지정
		//모델 값을 보낼 jsp경로지정하는 명령은 셋뷰네임
		modelAndView.setViewName("home/spring_error");
		modelAndView.addObject("exception", ex);
		String referer = request.getHeader("Referer");
		request.getSession().setAttribute("prevPage", referer);
		//세션은 클라이언트가 서버에 접속시 서버에서 발생하는 고유변수값이라 하고prevPage세션키를 하나 생성
		//세션에 저장된 prevPage키를 jsp에서 사용
		return modelAndView;
	}
}
