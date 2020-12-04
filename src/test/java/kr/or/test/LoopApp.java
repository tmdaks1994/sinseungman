package kr.or.test;

public class LoopApp {

	public static void main(String[] args) {
		// 반복문중에 for문
		// 메서드에서 사용하는 변수 아래 2줄
		int[] numbers = {11,21,31,41,51,61,71,81,91,101};//배열변수 선언
		int cnt;//반복횟수 카운트(세는)하는 역할 변수 선언
		//for문
		for(cnt=0;cnt<10;cnt++) {//cnt++ => cnt=cnt+1; 의미 1씩 증가하는의미
			//System.out.println("현재 카운터는 " + numbers[cnt]);
			//println함수는 한번 출력후 newline 엔터치는 역할.
			//10번 반복을 하는데, numbers[0], numbers[1],.... numbers[9] 출력
		String[] names = {"사용자1","사용자2","사용자3"};
		int length = names.length;
		//임베디드 프로그램에서 char을 사용하는 이유는 메모리를 효율적으로 사용하기 위해서 char을 사용.
		
		//자바 ""는 문자열 데이터 감싸줄때, ''는 1개문자데이터를 감싸줄때
		//배열타입[] 1차원배열= 가로선1row하나의 줄(라인)
		//향상된 for문에서는 시작값,중간값,끝값이 필요x
		for(String user_name :names) {
			//System.out.println("현재 카운터는" + names);
		}
		
		String[][] members = {
				{"admin","관리자","admin@abc.com","true","2020-12-04","ROLE_ADMIN"},
				{"user","사용자1","user@abc.com","false","2020-12-03","ROLE_USER"}
		};
		//배열타입 [][] 2차원 배열 = 표 1row,2row 리스트가 있는 줄 (여러개 라인)

			System.out.println("====== 회원 리스트 ======");
			System.out.println("user_id  user_name  email  use  regdate levels");
			for(String[] member:members) {
				System.out.println(member[0]+" "+member[1]+" "+member[2]+" "+member[3]+" "+member[4]+" "+member[5]);
			}
		
		
	}
	}
}
