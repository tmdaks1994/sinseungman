package kr.or.member;

import kr.or.member.MemberService;
import kr.or.member.MemberVO;

public class MemberController {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 실행 메서드
		MemberVO memberVO = new MemberVO();// 자바 오브젝트 생성하는 방법
		memberVO.setName("홍길동");
		memberVO.setAge(45);
		memberVO.setPhoneNum("000-0000-0000");
		MemberVO memberVO2 = new MemberVO();
		memberVO2.setName("성춘향");
		memberVO2.setAge(18);
		memberVO2.setPhoneNum("111-1111-1111");
		MemberVO memberVO3 = new MemberVO();
		memberVO3.setName("각시탈");
		memberVO3.setAge(28);
		memberVO3.setPhoneNum("222-2222-2222");
		// 위 각각 3개의 레코드를 1군데 담을 배열 클래스오브젝트를 하나 생성(아래)
		MemberVO[] members = new MemberVO[3];
		members[0] = memberVO;
		members[1] = memberVO2;
		members[2] = memberVO3;

		MemberService memberService = new MemberService();
		memberService.printMember(members);// 서비스 클래스의 메소드 호출
	}
}
