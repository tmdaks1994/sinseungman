package kr.or.test;

import java.util.function.IntSupplier;

public class LambdaApp {
	//static은 현재 클래스에서 유일한 메소드로 사용하겠다는 명시적인 예약어
	public static int method(int x, int y) {
		//IntSupplier 클래스는 계산된 결과값을 반환할때 int 타입으로 반환하는 명령어 모여있는 클래스
		//위 InSupplier는 인터페이스로 
		//람다식 적용전
		IntSupplier intSupplier = new IntSupplier() {
			@Override
			public int getAsInt() {
				int sum = x+y;
				// TODO Auto-generated method stub
				return sum;
			}
		}; 
		//위 intSupplier오브젝트를 호출해야만 실행 가능
		int result = intSupplier.getAsInt();
		//람다식 적용후
		IntSupplier intSupplier2 = () -> {
			int sum =x+y;
			return sum;
		};
		int result2 = intSupplier2.getAsInt();
		return result2;
	}
	
	public static void main(String[] args) {
		// 자바 앱의 진입 실행 함수
		//람다식 적용전
		System.out.println("람다식 테스트용 메소드 변환값 출력 = "+ method(3,5));
		//람다식 적용후
	}
}
