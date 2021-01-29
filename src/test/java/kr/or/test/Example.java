package kr.or.test;

public class Example {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[] intArray = new int [5];

		for(int i=intArray.length-1; i>=0; i--) {
			intArray[i] = i+1;
		}
		for(int i=0; i<intArray.length; i++) {
			System.out.print(intArray[i]);
		}
	}
}
