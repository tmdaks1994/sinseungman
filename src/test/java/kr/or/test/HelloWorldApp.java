package kr.or.test;

public class HelloWorldApp {

	public static void main(String[] args) {
		// 위 main()메서드는 자바프로그램의 실행 진입지점 입니다.
		System.out.println("헬로우 월드!");
		String testNull =null;
		String testEmpty = "";
		System.out.println("null출력" + testNull+"/ empty 출력" + testEmpty);
		System.out.println("ddd" + testEmpty.isEmpty());
		
	}
}
