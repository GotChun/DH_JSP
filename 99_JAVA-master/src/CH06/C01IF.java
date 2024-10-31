package CH06;

import java.util.Scanner;

public class C01IF {

	public static void main(String[] args) {
		// 01_IF기본
		// if(조건식)
		// {
		// 참인경우 실행되는 종속문장
		// }
//		Scanner sc = new Scanner(System.in);
//		System.out.print("나이 : " );
//		int age = sc.nextInt();
//		if(age >=8)
//			System.out.println("학교에 다닙니다");
//
//		System.out.println("첫번째 IF 블럭 종료");
//		if(age <8)
//			System.out.println("학교에 다니지 않습니다");
//
//		System.out.println("두번째 IF 블럭 종료");
//		System.out.println("프로그램을 종료합니다");

		// 02_IF_ELSE

//		Scanner sc = new Scanner(System.in);
//		System.out.print("나이 : " );
//		int age = sc.nextInt();
//		if(age >=8)
//			System.out.println("학교에 다닙니다");
//		else
//			System.out.println("학교에 다니지 않습니다");
//
//		System.out.println("두번째 IF 블럭 종료");
//		System.out.println("프로그램을 종료합니다");

		// 문제
		// 1) 정수 한개값을 입력받아 3의 배수이면 해당 수를 출력하세요
		// 2) 3의 배수이면서 5의 배수라면 출력

//		Scanner sc = new Scanner(System.in);
//		int n = sc.nextInt();

//		if(n%3==0)
//			System.out.println(n+" 은 3의 배수 입니다.");
//		
//		if(n%3==0 && n%5==0) 
//			System.out.println(n+" 은 3의 배수이면서 5의 배수 입니다.");
//		

//		if(n%3==0) {
//			if(n%5==0) {
//				System.out.println(n+" 은 3의 배수이면서 5의 배수 입니다.");				
//			}else {
//				System.out.println(n+" 은 3의 배수 입니다.");
//			}
//		}

//		if(n%3==0 && n%5==0) {
//			
//			//3의배수이면서 5의 배수인 경우
//			System.out.println(n+" 은 3의 배수이면서 5의 배수 입니다.");
//			
//		}else {
//			//3-o / 5-x
//			//3-x / 5-o
//			//3-x / 5-x
//			if(n%3==0) {
//				System.out.println(n+" 은 3의 배수 입니다.");
//			}
//			
//		}

		// 문제
		// 두수를 입력받아 두 수 중에 큰수를 출력
//		Scanner sc = new Scanner(System.in);
//		int n1 = sc.nextInt();
//		int n2 = sc.nextInt();
//		
//		if(n1>=n2) {
//			System.out.println("큰수 : " + n1);
//		}else {
//			System.out.println("큰수 : " + n2);
//		}
//		

		// 문제
		// 세 개의 정수를 입력받아 해당수의 합과 평균을 출력

		// 문제(!)
		// 세 개의 정수를 입력받아 가장큰수와 가장작은수를 각각 출력
//		Scanner sc = new Scanner(System.in);
//		int n1 = sc.nextInt();
//		int n2 = sc.nextInt();
//		int n3 = sc.nextInt();
//		int max = n1;

		// 02
//		if (max < n2) {
//			max = n2;
//		}
//		if (max < n3) {
//			max = n3;
//		}
//		System.out.println("큰 수 : " + max);

//		01		
//		if( n1>=n2 && n1>=n3 ) 
//		{
//			System.out.println("큰 수 : " +n1);
//		}
//		else {
//			//n2가 가장 큰겨우
//			//n3이 가장 큰경우
//			if( n2>=n1 && n2>=n3 ) 
//			{
//				System.out.println("큰 수 : " +n2);
//			}
//			else {
//				if( n3>=n1 && n3>=n2 ) 
//				{
//					System.out.println("큰 수 : " +n3);
//				}
//				
//			}
//		}
//		

		//
//		Scanner sc = new Scanner(System.in);
//		int n1 = sc.nextInt();
//		int n2 = sc.nextInt();
//		int n3 = sc.nextInt();
//		
//		if (n1 >= n2 && n1 >= n3) {
//			System.out.println(n1);
//		} else if(n2 >= n1 && n2 >= n3) {
//			System.out.println(n2);
//		} else if(n3 >= n2 && n3 >= n1) {
//			System.out.println(n3);
//		}else {
//			System.out.println("세 수가 같거나 정수가 아닙니다");
//		}

		
		
		
		
		// IF_ELSEIF_ELSEIF
//		Scanner sc = new Scanner(System.in);
//		int 과목1 = sc.nextInt();
//		int 과목2 = sc.nextInt();
//		int 과목3 = sc.nextInt();
//		int 과목4 = sc.nextInt();
//		double 평균 = (double)(과목1 + 과목2 + 과목3 + 과목4)/4;
		
		//질문어떻게?불합격 기준
//		if(과목1<40) {
//			System.out.println("불합격");
//		}
//		else if(과목2<40)//과목1>=40 && 과목2<40
//		{
//			System.out.println("불합격");
//		}
//		else if(과목3<40)//과목1>=40 && 과목2>=40 && 과목3<40
//		{
//			System.out.println("불합격");
//		}
//		else if(과목4<40) //과목1>=40 && 과목2>=40 && 과목3>=40&& 과목4<40
//		{
//			System.out.println("불합격");
//		}
//		else if(평균 <60) //과목1>=40 && 과목2>=40 && 과목3>=40&& 과목4>=40 && 평균 <60
//		{
//			System.out.println("불합격");
//		}
//		else //과목1>=40 && 과목2>=40 && 과목3>=40&& 과목4>=40 && 평균 >=60
//		{
//			System.out.println("합격");
//		}
			
//		if(과목1>=40 && 과목2>=40 && 과목3>=40&& 과목4>=40 && 평균 >=60) {
//			System.out.println("합격");
//		}else {
//			System.out.println("불합격");
//		}
		
		
		Scanner sc = new Scanner(System.in);
		int n1 = sc.nextInt();
		int n2 = sc.nextInt();
		int n3 = sc.nextInt();
		
		
		if (n1 >= n2 && n1 >= n3) {
			System.out.println("큰 수 : " + n1);
		}
		else
		{
			if (n2 >= n1 && n2 >= n3) {
				System.out.println("큰 수 : " + n2);
			}
			else
			{
				System.out.println("큰 수 : " + n3);
			}
	
		}

		//문제
		
		//시험 점수를 입력받아 
		//90 ~ 100점은 A, 
		//80 ~ 89점은 B, 
		//70 ~ 79점은 C, 
		//60 ~ 69점은 D, 
		//나머지 점수는 F를 출력하는 프로그램을 작성하시오.
		
		//문제
			
		//나이별로 요금을 부과하는 else if문을 만드세요
		//8세 미만  : 요금은 1000원
		//14세미만 : 요금은 2000원
		//20세미만 : 요금은 2500원
		//20세이상 : 요금은 3000원
	}

}
