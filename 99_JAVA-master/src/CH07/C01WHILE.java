package CH07;

import java.util.Scanner;

public class C01WHILE {

	public static void main(String[] args) {
			
		//01 while 기본
		//while(조건식){
		// 조건식이 참인 경우 실행되는 종속 문장(1개의 행일때는 생략가능)
		//}


//		int i=0; //탈출용 변수
//		while(i<5) //탈출을 위한 조건식
//		{
//			System.out.println("HELLO WORLD");
//			i++; //탈출을 위한 연산식
//		}
	
		//02 1-10까지 합 
//		int i=1;
//		int sum=0;
//		while(i<=10) {
//			System.out.println("i : " + i);
//			sum+=i;
//			i++;
//		}
//		System.out.println("sum : " + sum);
		
		//문제
		//01 1 - N 까지의 합
		
//		Scanner sc = new Scanner(System.in);
//		int n = sc.nextInt();
//		
//		int i=1;
//		int sum = 0;
//		while(i<=n) {
//			System.out.println("i : " + i);
//			sum+=i;
//			i++;
//		}
//		System.out.printf("%d 부터 %d 까지의 합 : %d\n",1,n,sum);
		
		//02 N - M 까지의 합을 구합니다.(N<M)
		
//		Scanner sc = new Scanner(System.in);
//		int n = sc.nextInt();
//		int m = sc.nextInt();
////		System.out.printf("%d %d", n,m);
//		
//		//무한루프(같은수 입력 방지)
//		while(n==m) {
//			System.out.println("같은수가 입력되었습니다. 다시 입력하세요..");
//			n = sc.nextInt();
//			m = sc.nextInt();
//		}
//		
//		//n>m경우 Swap
//		int tmp;
//		if(n>m) {
//			tmp = m;
//			m = n;
//			n = tmp;
//		}
//		
//		
//		int i=n;
//		int sum = 0;
//		while(i<=m) {
//			System.out.println("i : " + i);
//			sum+=i;
//			i++;
//		}
//		System.out.printf("%d 부터 %d 까지의 합 : %d\n",n,m,sum);
		
		//03 1 - N 까지 수중에 짝수/홀수의 합을 각각 출력
		
//		Scanner sc = new Scanner(System.in);
//		int n = sc.nextInt();
//		int i=1;
//		int oddSum=0;
//		int evenSum=0;
//		while(i<=n) {
//			if(i%2==0) {
//				System.out.printf("%d 는 짝수\n",i);
//				evenSum+=i;
//			}else {
//				System.out.printf("%d 는 홀수\n",i);
//				oddSum+=i;
//			}
//			
//			i++;
//		}

		
		//04 1 - N 까지 수중에 3의 배수만 출력하고 그합도 출력
		//05 1 - N 까지 수중에 4의 배수를 출력하고 4의배수가 아닌 나머지의 합을 구하세요
		//06 구구단 2 단출력
//		int i=1;
//		while(i<=9) {
//			System.out.printf("%d x %d = %d\n",2,i,2*i);
//			i++;	
//		}
//		
		//07 구구단 N 단출력(N<=9)
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		while(n>9) {
			System.out.println("잘못입력하셨습니다. 다시입력하세요.");
			n = sc.nextInt();
		}
		int i=1;
		while(i<=9) {
			System.out.printf("%d x %d = %d\n",n,i,n*i);
			i++;	
		}
		
	}

}
