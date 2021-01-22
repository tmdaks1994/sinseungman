package kr.or.test;

public class Example {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int sum =0;
		for(int i =1; i<=100; i++){
			if(i%3 ==0) {
				sum += i;
			} 
		}
		System.out.println("3의배수 합 : " + sum);

		int j=0;
		int k=0;
		while(true) {
			j=(int)(Math.random()*6);
			k=(int)(Math.random()*6);
			System.out.println(j+","+k);
			if(j+k == 5) {
				break;
			}
		}
	}
}
