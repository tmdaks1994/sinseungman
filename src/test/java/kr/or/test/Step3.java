package kr.or.test;

import java.util.Calendar;

public class Step3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Week today = null;
		Calendar calendar = Calendar.getInstance();//오브젝트 선언 calendar객체변수=인스턴스변수
		//calendar 오브젝트에서 현재 요일을 반환받기(1~7까지 반환)
		int intweek = calendar.get(Calendar.DAY_OF_WEEK);//calendar객체, calendar클래스
		//스위치 조건문으로 1~7까지 반환값을 한글로 변환
		switch(intweek) {//스위치로 조건을 판단
		case 1:
			today = Week.월;
			break; //브레이크는 case문장을 빠져나가는 명령
		case 2:
			today = Week.화;
			break;
		case 3:
			today = Week.수;
			break;
		case 4:
			today = Week.목;
			break;
		case 5:
			today = Week.금;
			break;
		case 6:
			today = Week.토;
			break;
		case 7:
			today = Week.일;
			break;
		}
		System.out.println("오늘 요일은 : "+today+"요일 입니다.");
		
	}

}
