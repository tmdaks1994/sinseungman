package kr.or.test;

public class InterfaceApp {

	public static void main(String[] args) {
		// 자바프로그램은 항상 main() 진입점에서 실행하는것. 웹프로그램은 해당x
		AllCalc allCac = new AllCalc();
		allCac.add(4,4);
		allCac.div(9, 9);
		allCac.sub(5, 6);
		allCac.mul(8, 10);
	}

}

//인터페이스 실습
interface CalcAddSub{
	void add(double dx, double dy);
	void sub(double dx, double dy);
}
interface CalcMulDiv extends CalcAddSub{
	void mul(double dx, double dy);
	void div(double dx, double dy);
}
class AllCalc implements CalcAddSub, CalcMulDiv {

	@Override
	public void mul(double dx, double dy) {
		// TODO Auto-generated method stub
		System.out.println("곱셈 결과는" + (dx*dy) );
	}

	@Override
	public void div(double dx, double dy) {
		// TODO Auto-generated method stub
		System.out.println("나누기 결과는" + (dx/dy) );
	}

	@Override
	public void add(double dx, double dy) {
		// TODO Auto-generated method stub
		System.out.println("덧셈 결과는" + (dx+dy) );
	}

	@Override
	public void sub(double dx, double dy) {
		// TODO Auto-generated method stub
		System.out.println("빼기 결과는" + (dx-dy) );
	}
}