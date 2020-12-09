package kr.or.member;

import java.io.IOException;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;

import org.apache.commons.net.ntp.NTPUDPClient;
import org.apache.commons.net.ntp.TimeInfo;

import kr.or.member.MemberService;
import kr.or.member.MemberVO;

public class MainController {

	public static void main(String[] args) throws IOException {
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
		
		//서버시간 가져오기
		//서버시간을 가져올 수 있는 commons-net 메이븐 디펜던시 사용 라이브러리
		NTPUDPClient timeClient = new NTPUDPClient();
		timeClient.setDefaultTimeout(1000);
		//네트워크로 서버시간을 가져올때, 1초를 남기면, 재 접속
		timeClient.open();
		// http://pool.ntp.org 서버시간 보내줄 실제 서버 주소.
		InetAddress address = InetAddress.getByName("pool.ntp.org");
		TimeInfo timeInfo = timeClient.getTime(address);
		//서버시간을 담은 timeInfo 객체 변수를 사용
		long returnTime = timeInfo.getMessage().getTransmitTimeStamp().getTime();
		//위 반한봗은 타임스탬프초 값을 사람이 알아볼 수 있는 시간으로 변환.
		Date nowdate = new Date(returnTime);
		//System.out.println("현재 서버시간은" + date);
		//Wed Dec 09 11:18:56 KST 2020 -> 
		//SimpleDateFormat formatDate = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
		//System.out.println("현재 서버 시간은" + formatDate.format(date));
		LocalDateTime localDateTime = nowdate.toInstant()
				.atZone(ZoneId.systemDefault())
				.toLocalDateTime();
		System.out.println("Server 시간:" + localDateTime);
		System.out.println("로컬PC 시간:" + localDateTime.now());
	}
}
