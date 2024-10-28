package MVCprac.View;

import java.util.Scanner;

import MVCprac.Controller.TeamController;
public class View {

	private TeamController teamController;		//컨트롤러로 보내주기
	Scanner sc = new Scanner(System.in);
	
	public View(TeamController teamController) {
		this.teamController = teamController;
	}
	public void run() {
		while(true) {
			System.out.println("번호 선택");
			System.out.println("-------------------");
			System.out.println("1 팀 생성");
			System.out.println("2 팀 조회");
			System.out.println("3 팀 수정");
			System.out.println("4 팀 삭제");
			System.out.println("5 팀 삭제");
			int num = sc.nextInt();
			switch(num) {
			case 1:
				break;
			case 2:
				break;
			case 3:
				break;
			case 4:
				break;
			case 5:
				System.out.println("프로그램을 종료합니다.");
				System.exit(-1);
			default :
				System.out.println("잘못돈 입력입니다.");
				System.out.println("다시 입력해주세요.");
			}
		}
		
		
	}
	
}



