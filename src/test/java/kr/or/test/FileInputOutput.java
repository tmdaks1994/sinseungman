package kr.or.test;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileInputOutput {

	public static void main(String[] args) throws IOException {
		// 내pc에 저장된 텍스트 메모장파일 읽어들이고, 출력하기 구현
		FileInputStream fileInputStream = null;
		FileOutputStream fileOutputStream =null;
		//오브젝트, 실행가능한 클래스형 변수 생성
		try {
			fileInputStream = new FileInputStream("D:\\egov\\workspace\\sinseungman\\manifest.yml");
			fileOutputStream = new FileOutputStream("D:\\egov\\workspace\\sinseungman\\manifest_bak.txt");
			//지금 반복문으로 for만 사용
			int byte_content;
			while((byte_content = fileInputStream.read()) != -1) {
				System.out.print("바이트형 문자 읽어 들이기 " + (char)byte_content);
				//read로 읽은 파일을 저장
				fileOutputStream.write(byte_content);
			}
		} catch (FileNotFoundException e) {
			System.out.println("경로에서 파일을 찾을 수 없습니다." + e.toString());
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
