package kr.or.test;

public class Example {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int x =10;
		int y =20;

		System.out.println(++x);
		System.out.println(y--);
		
		
		int scroe = 85;
		String result = (!(scroe>90))? "가":"나";
		System.out.println(result);
		
		int pencil = 534;
		int stu = 30;
		int pendd = (pencil % stu);
		System.out.println(pendd);
		
		
		System.out.println((x>7)&&(y<=5));
		System.out.println((x%3 ==2)||(y%2!=1));
		
	}

}
