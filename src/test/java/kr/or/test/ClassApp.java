package kr.or.test;

public class ClassApp {

	public static void main(String[] args) {
		// 이클래스의 진입 메소드 main
		Circle c = new Circle(5);
		Circle c2 = new Circle(10);
		//new 키워드는 메모리에 새로 할당하는 이야기
		//Circle 클래스를 c 이름으로 prefix해서 사용
		//자바프로그램의 특징은 OOP프로그래밍의 대표적인 사례, Object=위 에서 new키워드로 생성한 c오브젝트
		double print_result = c.getArea();
		System.out.println("원의 넓이는 " + print_result+"입니다");
		double print_result_2 = c2.getArea();
		System.out.println("원의 넓이는 " + print_result_2+"입니다");
	
		Employee employee = new Employee();
		Salesman saleman = new Salesman();
		Development development = new Development();
		//employee.doJob();
		//saleman.doJop();
		//development.doJob();
		GraphicObject graphicObject = new Triangle();
		graphicObject.draw();//클래스형 변수명을 지정할때
	}
}

//메소드 오버라이드 ( 메소드이름이 같은 것으 실행 - 상속관계)외
//메소드 오버로드 (한개의 클래스에서 메소드 이름은 고유값이라서 중복해서 사용할 수 없음. 단, 매개변수가 다르면 가능

//추상클래스에 대한 연습
//추상클래스또는 인터페이스를 사용하는 목적은 두꺼운책에서 목차를 만드는 것과 똑같은 역할.
abstract class GraphicObject {
	int x,y;//그래픽 오브젝트 클래스 멤법변수 선언
	abstract void draw();//명세만 있고 구현내용이 없는 (인터페이스) 추상에서도 선언
	// 다른 해석하면, 책에서  목차만 있고, 내용이 없는 구조.
}
class Triangle extends GraphicObject {
	@Override
	void draw() {
		System.out.println("  *");
		System.out.println(" * * ");
		System.out.println("*****");
	}
}
class Employee{//회사의 직원들
	int nSalary;
	String szDept;
	public void doJob() {
		System.out.println("환영합니다!");
	}
}

class Salesman extends Employee{
	public Salesman( ) {//클래스명과 똑같은 메소드를 생성자 메소드.
		szDept = "판매부서"; //부모클래스 Employee의 szDept멤버변수를 자식 클래스에서도 사용가능
	}
	public void doJop() {
		System.out.println("환영합니다"+ szDept +"입니다.");
	}
}

class Development extends Employee{
	public Development() {szDept="개발부서";}
	public void doJob() {
		System.out.println("환영합니다" + szDept + "입니다.!");
	}
}
class Circle {
	int r;
	public Circle(int a) {
		r = a;
	}
	public double getArea() {
		return r*r*3.14;
	}
}
