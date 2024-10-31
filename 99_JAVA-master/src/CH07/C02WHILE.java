package CH07;

import java.util.Scanner;

public class C02WHILE {
	
	
	public static void main(String[] args) {
		
		//2단 - 9단 출력
//		int dan=2;
//		while(dan<=9) {
//			
//			int i=1;
//			while(i<=9) {
//				System.out.printf("%d x %d = %d\n", dan,i,dan*i);
//				i++;
//			}
//			System.out.println();
//			dan++;
//		}
		
		//2단 - 9단 출력 (2x9,2x8 ,.... 9x9 ,...9x1)
//		int dan=2;
//		while(dan<=9) {
//			
//			int i=9;
//			while(i>=1) {
//				System.out.printf("%d x %d = %d\n", dan,i,dan*i);
//				i--;
//			}
//			System.out.println();
//			dan++;
//		}
		
		
		//9단 - 2단( 9x9 9x8 - 2x1)
//		int dan=9;
//		while(dan>=2) {
//			
//			int i=9;
//			while(i>=1) {
//				System.out.printf("%d x %d = %d\n", dan,i,dan*i);
//				i--;
//			}
//			System.out.println();
//			dan--;
//		}
		
		//2단 - N단(N<9)
		
//		Scanner sc = new Scanner(System.in);
//		int n = sc.nextInt();
//		
//		while(n>10||n<=2) {
//			System.out.println("다시입력하세요.");
//			n = sc.nextInt();
//		}
//		
//		int dan=2;
//		while(dan<=n) {
//			
//			int i=1;
//			while(i<=9) {
//				System.out.printf("%d x %d = %d\n", dan,i,dan*i);
//				i++;
//			}
//			System.out.println();
//			dan++;
//		}
		
		//N단 - M단(N<M , N<9 , M<9)
//		Scanner sc = new Scanner(System.in);
//		int n = sc.nextInt();
//		int m = sc.nextInt();
//		
//		while(n>=m) {
//			System.out.println("다시입력하세요.");
//			n = sc.nextInt();
//			m = sc.nextInt();
//		}
//		
//		int dan=n;
//		while(dan<=m) {
//			
//			int i=1;
//			while(i<=9) {
//				System.out.printf("%d x %d = %d\n", dan,i,dan*i);
//				i++;
//			}
//			System.out.println();
//			dan++;
//		}
		
		//별찍기(기본높이:4)
		

		//*****
		//*****
		//*****
		//*****
//		i(행)	j(별)
//		0	0-4
//		1	0-4
//		2	0-4
//		3	0-4
//		i=0	j=0
//		i++	j++
//		i<4	j<5
		
		
//		int i = 0;
//		while(i<4) {
//			
//			int j=0;
//			while(j<5) {
//				System.out.print("*");
//				j++;
//			}
//
//			System.out.println();
//			i++;
//		}
		
		//*
		//**
		//***
		//****
//		i(행)	j(별)
//		0	0-0
//		1	0-1-
//		2	0-2
//		3	0-3
//		------------------
//		i=0	j=0
//		i++	j++
//		i<4	j<=i
		
//		int i=0;
//		while(i<4) {
//			
//			int j=0;
//			while(j<=i) {
//				System.out.print("*");
//				j++;
//			}
//			System.out.println();
//			i++;
//		}
		
		
		//****
		//***
		//**
		//*
		
//		i(행)	j(별)
//		0	0-3
//		1	0-2
//		2	0-1
//		3	0-0
//		-----------------
//		i=0	j=0
//		i++	j++
//		i<4	j<4-i
		
		
//		int i=0;
//		while(i<4) {
//			
//			int j=0;
//			while(j<4-i) {
//				System.out.print("*");
//				j++;
//			}
//			System.out.println();
//			i++;
//		}
		
		
		//   *
		//  ***
		// *****
		//*******
		
//		i(행) 		j(공백)		k(별)
//		0		0-2				0-0
//		1		0-1				0-2
//		2		0-0				0-4
//		3		x				0-6
//		-----------------------------------------
//		i=0		j=0				k=0
//		i++		j++				k++
//		i<4		j<3-i			k<=2*i
		
//		int i=0;
//		while(i<4) {	
//			//공백
//			int j=0;
//			while(j<3-i) {
//				System.out.print(" ");
//				j++;
//			}
//			//별
//			int k=0;
//			while(k<=2*i) {
//				System.out.print("*");
//				k++;
//			}
//			System.out.println();
//			i++;
//		}
	
		
		//*******
		// *****
		//  ***
		//   *
//		i(행)		j(공)		k(별)
//		0		x		0-6
//		1		0-0		0-4
//		2		0-1		0-2
//		3		0-2		0-0
//		-----------------------------------------------
//		i=0		j=0		k=0
//		i++		j++		k++
//		i<4		j<i		k<=(3*2)-2*i
		
//		int i=0;
//		while(i<4) {
//			//공백
//			int j=0;
//			while(j<i) {
//				System.out.print(" ");
//				j++;
//			}
//			//별
//			int k=0;
//			while(k<=(3*2)-2*i) {
//				System.out.print("*");
//				k++;
//			}
//			
//			System.out.println();
//			i++;
//		}
		
		
		
		//   *
		//  ***
		// *****		
		//*******
		// *****
		//  ***
		//   *
		
//		i(행)		j(공)		k(별)
//		0		0-2		0-0
//		1		0-1		0-2
//		2		0-0		0-4
//		3		x		0-6
//		-------------------------------------------
//				j=0		k=0
//				j++		k++
//				j<3-i		k<=2*i
//
//		4		0-0		0-4
//		5		0-1		0-2
//		6		0-2		0-0
//		-------------------------------------------
//		i=0		j=0		k=0
//		i++		j++		k++
//		i<7		j<=(i-4)	k<=(6*2)-2*i
//		int i=0;
//		while(i<7) {
//			
//			if(i<4) {
//				//공백
//				int j=0;
//				while(j<3-i) {
//					System.out.print(" ");
//					j++;
//				}
//				//별
//				int k=0;
//				while(k<=2*i) {
//					System.out.print("*");
//					k++;
//				}
//				
//				
//			}else {
//				
//				//공백
//				int j=0;
//				while(j<=(i-4)) {
//					System.out.print(" ");
//					j++;
//				}
//				//별
//				int k=0;
//				while(k<=(6*2)-2*i) {
//					System.out.print("*");
//					k++;
//				}
//			}
//			
//			System.out.println();
//			i++;
//		}
		
		
		
		//*******
		// *****
		//  ***
		//   *		
		//   *
		//  ***
		// *****		
		//*******
		
		
		
		
		//별찍기(기본높이:h)
//		높이 : h
//		i(행)	j(별)
//		0	0-4
//		1	0-4
//		2	0-4
//		3	0-4
//		---------------
//		i=0	j=0
//		i++	j++
//		i<h	j<5
		//
//		Scanner sc = new Scanner(System.in);
//		int h = sc.nextInt();
//		int i = 0;
//		while(i<h) {
//			
//			int j=0;
//			while(j<5) {
//				System.out.print("*");
//				j++;
//			}
//
//			System.out.println();
//			i++;
//		}
//		
		
		
		//*
		//**
		//***
		//****
//		입력:h
//		i(행)	j(별)
//		0	0-0
//		1	0-1-
//		2	0-2
//		3	0-3
//		------------------
//		i=0	j=0
//		i++	j++
//		i<h	j<=i
//		
//		Scanner sc = new Scanner(System.in);
//		int h = sc.nextInt();
//		int i=0;
//		while(i<h) {
//			
//			int j=0;
//			while(j<=i) {
//				System.out.print("*");
//				j++;
//			}
//			System.out.println();
//			i++;
//		}
		
		
//		입력:h
//		i(행)	j(별)
//		0	0-3
//		1	0-2
//		2	0-1
//		3	0-0
//		-----------------
//		i=0	j=0
//		i++	j++
//		i<h	j<h-i
		
//		Scanner sc = new Scanner(System.in);
//		int h = sc.nextInt();
//		int i=0;
//		while(i<h) {
//			
//			int j=0;
//			while(j<h-i) {
//				System.out.print("*");
//				j++;
//			}
//			System.out.println();
//			i++;
//		}
//		
		
		
		//   *
		//  ***
		// *****
		//*******	
//		Scanner sc = new Scanner(System.in);
//		int h = sc.nextInt();
//		int i=0;
//		while(i<h) {	
//			//공백
//			int j=0;
//			while(j<(h-1)-i) {
//				System.out.print(" ");
//				j++;
//			}
//			//별
//			int k=0;
//			while(k<=2*i) {
//				System.out.print("*");
//				k++;
//			}
//			System.out.println();
//			i++;
//		}
	
		
		//*******
		// *****
		//  ***
		//   *
//		입력:h
//		i(행)		j(공)		k(별)
//		0		x		0-6
//		1		0-0		0-4
//		2		0-1		0-2
//		3		0-2		0-0
//		-----------------------------------------------
//		i=0		j=0		k=0
//		i++		j++		k++
//		i<h		j<i		k<((h-1)*2)-2*i

//		Scanner sc = new Scanner(System.in);
//		int h = sc.nextInt();
//		int i=0;
//		while(i<h) {
//			//공백
//			int j=0;
//			while(j<i) {
//				System.out.print(" ");
//				j++;
//			}
//			//별
//			int k=0;
//			while(k<=((h-1)*2)-2*i) {
//				System.out.print("*");
//				k++;
//			}
//			
//			System.out.println();
//			i++;
//		}
		
		
		
	}

}
