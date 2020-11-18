package org.edu.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("환영합니다. 현재 여러분 컴퓨터 언어는 {} 입니다..", locale);
		logger.info("환영합니다. 현재 여러분 컴퓨터 언어는" + locale + "입니다..");
		System.out.println("위에 Locale클래스를 사용하는 이유는 다국어 지원떄문에 변수로 사용하게 됩니다.");
		System.out.println("함수-C언어나자바스크립트와 메소드-자바,스프링에서 사용함-는 같은 대상을 가리킵니다.");
		System.out.println("함수-메소드는 함수명('매개변수-입력값'){구현내용}형식이고, 입력값->출력값 구현됩니다.");
		Date date = new Date(); //Data 날짜관련 클래스형 변수 date 선언했습니다.
		//data 변수 실행가능한 변수= 클래스형 변수=Object=인스턴스라고 합니다.
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//DataFormat 클래스형 변수 dataFormat이 선언되었고, 실행가능한 변수로 되었다.
		String formattedDate = dateFormat.format(date);
		//위 변수가 실행되어서 출력된 결과값이 String클래스형 변수 formattedDate변수에 담기게 된다.
		model.addAttribute("TomcatserverTime", formattedDate );//servertime 변수값으로 jsp파일로 이동.
		//위 model이라는 클래스형 변수를 이용해서, serverTime변수값을 아래 home(생략.jsp)로 전송해준다.
		System.out.println("현재서버의 시간은"+ formattedDate +"입니다.");
		return "home";//결과적으로 return 출력값이 home(생략.jsp)에 연동된다.
		//스프링에서 뷰단으로 데이터 이동에 대한 정리
	}
}
