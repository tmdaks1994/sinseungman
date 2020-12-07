package kr.or.test;

import java.io.IOException;
import java.io.InputStreamReader;

import org.edu.vo.MemberVO;

/**
 * 자바에서 예외처리하는 테스트 클래스
 * @author User
 *
 */
public class ExceptionTest {

	public static void main(String[] args) {
		// 진입실행메서드 main()
		//메서드 내부변수 
		MemberVO memberVO = new MemberVO(); //jsp폼데이터를 set으로 저장, get으로 출력.
		memberVO.setUser_id("simpson");
		memberVO.setUser_name("심슨");
		memberVO.setEmail("simpson@asd");
		System.out.println("회원정보 클래스의 멤버 변수 값들을 출력하기 = "+memberVO.getUser_name() + memberVO.toString());
		
		String[] stringArray = {"10","2a","100"};
		for(int cnt=0;cnt<=2;cnt++) {
			/*
			indexValue = Integer.parseInt(stringArray[cnt]);//배열의 문자값을 int형변환
			System.out.println(cnt + " 번째 배열에 저장된 숫자는 = " + indexValue);
			*/
			
			try {
				
			}catch(ArrayIndexOutOfBoundsException e) {
				System.out.println("에러메세지 출력 = " + e.toString());
				System.out.println("배열의 크기가 올바르지 않습니다.");
			}catch(NumberFormatException e) {
				System.out.println("에러메시지 출력 = " + e.toString());
				System.out.println("개발자가 지정한 에러메세지는 숫자 변환시 에러가 발생 되었음.");
			}finally {
				System.out.println("finally는 try~catch 결과와 상관없이 항상 실행");
			}
			
		}
	}

}