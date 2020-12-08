package kr.or.test;

public class Step1 {
	//전역변수는 클래스 전체에 영향을 미치는 변수 = 클래스 안에서 사용하는 변수
	//내부 변수는 메소드 내에서만 사용가능
	public static void main(String[] args) {
		// 필드=메소드 내부 변수<->전역변수
		String name;
		int age;
		String phoneNum;
		//변수에 값을 대입연산자로 대입(아래)
		name="홍길동";
		age=45;
		phoneNum="010-1230-1243";
		printMember(name, age, phoneNum);
		name="성춘향"; 
		age=46;
		phoneNum="010-1238-1248";
		printMember(name, age, phoneNum);
		name="각시탈"; 
		age=28;
		phoneNum="010-3298-6828";
		printMember(name, age, phoneNum);
		
		String[] names = {"홍길동","성춘향","각시탈"};
		int[] ages = {45,46,28};
		String[] phoneNums = {"010-1230-1243","010-1238-1248","010-3298-6828"};
		printMember(names,ages,phoneNums);
	}

	private static void printMember(String[] names, int[] ages, String[] phoneNums) {
		// member를 출력하는데 배열값을 받아서 구현(아래)
		int dataLength = names.length; //이름배열에 있는 사람의 명수를 구하기
		for (int cnt=0; cnt<dataLength; cnt++) {
			System.out.println(cnt);
			System.out.println("회원의 이름은: "+ names[cnt]+" 나이는:" + ages[cnt]+" 전화번호는: "+phoneNums[cnt]);
		}
	}

	private static void printMember(String name, int age, String phoneNum) {
		// member를 출력하는 프린트 메소드 구현 내용
		System.out.println("회원의 이름은: " + name+ " 나이는 : "+ age+ " 전화번호는 : " + phoneNum);
	}
}
