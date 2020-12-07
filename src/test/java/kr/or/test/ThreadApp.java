package kr.or.test;

public class ThreadApp extends Thread {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//(new ThreadApp()).start();
		MyThread mythread1 = new MyThread("myThread1");
		MyThread mythread2 = new MyThread("myThread2");
		MyThread mythread3 = new MyThread("myThread3");
		mythread1.start();
		mythread2.start();
		mythread3.start();
	}
}

class MyThread extends Thread {
	public MyThread(String szName) {
		super(szName);
	}
	public void run() {
		for(int cnt=0;cnt<100;cnt++) {
			System.out.println(this.getName() + " ");
		}
	}
}
