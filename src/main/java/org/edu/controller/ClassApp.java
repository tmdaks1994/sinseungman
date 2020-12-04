package org.edu.controller;

public class ClassApp {

	public static void main(String[] args) {
		// 이클래스의 진입 메소드 main
		Circle c = new Circle(5);
		//new 키워드는 메모리에 새로 할당하는 이야기
		//Circle 클래스를 c 이름으로 prefix해서 사용
		//자바프로그램의 특징은 OOP프로그래밍의 대표적인 사례, Object=위 에서 new키워드로 생성한 c오브젝트
		double print_result = c.getArea();
		System.out.println("원의 넓이는 " + print_result+"입니다");
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
