package kr.or.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Calendar;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/*
 * OpenApi클래스로  HRD-Net에서 제공하는 통합과정 실업자훈련 목록을 출력하는 자바앱
 * @author 뚫어봐
 *
 */
public class OpenApi {

	//외부연계 역할 메소드(아래)
	public static void serviceApi() {
		BufferedReader bufferedReader = null; //HRD넷에서 전송받은 데이터를 임시 저장하는 공간.
		String urlStr = "http://www.hrd.go.kr/hrdp/api/apipo/APIPO0101T.do?srchTraEndDt=20210317&pageSize=10&srchTraArea2=44133&srchTraArea1=44&srchTraOrganNm=%ED%9C%B4%EB%A8%BC&srchTraStDt=20201108&sortCol=TR_STT_DT&authKey=5YQ60GDjycVCZwh0JTNdpKI5IwzE5F8Y&sort=ASC&returnType=XML&outType=1&pageNum=1&srchTraPattern=N1&srchPart=-99&apiRequstPageUrlAdres=/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp&apiRequstIp=180.67.125.93";
		try {
			URL url = new URL(urlStr);
			try {
				HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
				urlConnection.setRequestMethod("GET");//URL쿼리스트링파라미터를 보낸다.
				bufferedReader = new BufferedReader(new InputStreamReader(urlConnection.getInputStream(),"euc-kr"));
				String result="";
				String line;

				while((line=bufferedReader.readLine()) !=null) {
					result = result + line + "\n"; // \n은 줄바꿈	
				}
				//XmlUtils.java클래스를  이용해서 xmml태그내용을 출력
				String result_xmlUtils = XmlUtils.formatXml(result); //결과를 출력했을때 사용자가 보기 편하도록 줄바꿈하여서 보여줌
				System.out.println("읽어 들인 최종 결과 값은" + result_xmlUtils);
			} catch (IOException e) {
				// Http웹 접근에러상황발생
				System.out.println("Http 웹 접근 에러 왜냐하면 " + e.toString());
			}
		} catch (MalformedURLException e) {
			//외부 연계 URL에 접근 못했을 때
			System.out.println("URL주소형식이 잘못되었습니다. 왜냐하면"+ e.toString());
		}finally {
			//콘솔화면에 현재PC시간을 표시해서 진짜 5초단위로 스케줄대로 작동되는지 확인
			Calendar calendar = Calendar.getInstance();
			System.out.println(calendar.getTime());
		}
	}
	public static void main(String[] args) {
		int sleepSec = 10;
		//메이스레드는 1개 다른스레드를 추가로 실행할때, Runnabli메소드를 사용.
		//주기적인 스레드작업을 위한 코딩 : new키워드로 실행가능한 오브젝트 변수 = exec
		final ScheduledThreadPoolExecutor exec = new ScheduledThreadPoolExecutor(1);
		exec.scheduleAtFixedRate(new Runnable() {//스레드를 이용해서 5초단위로 메서드 반복실행
			public void run( ) {
				serviceApi();
				
			}
		}, 0, sleepSec, TimeUnit.SECONDS);
		// 일반메소드와 스택 메소드의 호출 차이
		/*StaticTest staticTest = new StaticTest();
		staticTest.test2(); // 정적이 아닌 메소드는 객체 생성후 접근 가능 
		StaticTest.test(); // static(정적)인 메소드는 객체 생성없이 클래스로 바로 접근이 가능*/
		/*int sum =0;
		while(sum < 10) {
			sum = sum +1;
		}
		System.out.println("sum의 최종값은" + sum);*/
	}
}

class StaticTest {//스태틱은 메소드, 변수에도 해당되는 이론.
	OpenApi openApi = new OpenApi();
	public static void test() { //static은 클래스를 읽어들이면 고정으로 메모리를 할당받아 실행이 가능하다.
		System.out.println("스태틱 테스트");
	}
	public void test2() { // 일반메소드는 new키워드로 객체를 생성할때 메모리를 할당받는다.
		System.out.println("테스트2");
	}
}
