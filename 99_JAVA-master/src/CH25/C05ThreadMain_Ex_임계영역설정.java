package CH25;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

class IncrementThread2 implements Runnable {
	private static int counter = 0;

	// lock추가 - 임계영역에 접근 여부를 판단하는 기준(wait() , notifyall())
	private static final Object lock = new Object();

	public int getCounter() {
		return counter;
	}

	@Override
	public void run() {
		for (int i = 0; i < 100000; i++) {

			// 임계영역지정- 한스레드가 들어오면 다른스레드는 접근 제한
			synchronized (lock) {
				//작업내용
				counter++; // 공유변수값증가
				System.out.println(Thread.currentThread().getName() + "s counter : " + counter);

				
				try {
					if (i < 99999) {
						lock.notifyAll(); // 값증가 이후 다른 스레드에게 권한 양보
						lock.wait(5);	//i가 99999이하(반복을 벗어나지않으면)잠깐대기
										//다른스레드가 1증가하고 나올때까지 기다림
					}
				} catch (InterruptedException e) {
				
					e.printStackTrace();
				}
			}	//임계영역끝

		}
	}
}

public class C05ThreadMain_Ex_임계영역설정 {

	public static void main(String[] args) throws InterruptedException {
		IncrementThread2 incrementThread1 = new IncrementThread2();
		IncrementThread2 incrementThread2 = new IncrementThread2();
		IncrementThread2 incrementThread3 = new IncrementThread2();
		IncrementThread2 incrementThread4 = new IncrementThread2();

		Thread thread1 = new Thread(incrementThread1);
		Thread thread2 = new Thread(incrementThread2);
		Thread thread3 = new Thread(incrementThread3);
		Thread thread4 = new Thread(incrementThread3);

		thread1.setName("TH1");
		thread2.setName("TH2");
		thread3.setName("TH3");
		thread4.setName("TH4");

		thread1.start();
		thread2.start();
		thread3.start();
		thread4.start();
		//메인 스레드가 thread1,thread2의 작업이 모두 완료될 때까지 대기하도록 설정
		thread1.join();
		thread2.join();
		thread3.join();
		thread4.join();

		System.out.println("Final value: " + incrementThread1.getCounter());


	}
}
