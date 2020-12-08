package kr.or.member;

import kr.or.member.MemberVO;

public class MemberService {
	public void printMember(MemberVO[] members) {
		// 서비스 구현
		int cnt = 0;
		for (MemberVO member : members) {
			cnt = cnt + 1;
			System.out.println(cnt + "번째 레코드는 " + member.toString());
		}
		//비즈니스 로직에서 처리하는 내용은 데이터를 가공
		//위의 내용처럼 데이터 select가져오기, insert입력하기 update수정하기
		//delete 삭제하기
	}
}
