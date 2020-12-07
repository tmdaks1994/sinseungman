package kr.or.test;

public class UtilApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//java.lang Math클래스를 사용해서 랜덤하게 숫자를 뽑기.
		System.out.println("1부터 100까지 랜덤한 숫자 출력하기 = " 
		+ (int)(Math.random() * 100));
		//결과가 float실수형이여서 int 정수형으로 변환
		//기본형을 객체로 표현했다는 int
	}
}
