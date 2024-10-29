package MVCprac.View;

import java.util.Scanner;

import MVCprac.Controller.TeamController;
import MVCprac.Domain.TeamDto;
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
				createTeam();
				break;
			case 2:
				updateTeam();
				break;
			case 3:
				getTeam();
				break;
			case 4:
				deleteTeam();
				break;
			case 5:
				System.out.println("프로그램을 종료합니다.");
				System.exit(-1);
			default :
				System.out.println("잘못된 입력입니다.");
				System.out.println("다시 입력해주세요.");
			}
		}
		
		
	}
	
	private void createTeam() {
		System.out.println("팀 정보를 입력하세요");
		System.out.print("팀 ID : ");
		int id = sc.nextInt();
		System.out.print("팀 이름 : ");
		String name = sc.next();
		System.out.print("팀 LCK 타이틀 수 : ");
		int lckTitle = sc.nextInt();
		System.out.print("Worlds 타이틀 수 : ");
		int worlds = sc.nextInt();
		System.out.print("팀 색상 : ");
		String teamColor = sc.next();
		System.out.println("팀 헤드코치 : ");
		String headcoach = sc.next();
		
		TeamDto newTeam = new TeamDto(id,name,lckTitle,worlds,teamColor,headcoach);
		teamController.createTeam(newTeam);
		System.out.println("팀 생성완료");
	}
	
    private void updateTeam() {
        System.out.print("수정할 팀 ID: ");
        int id = sc.nextInt();
        System.out.print("새 팀 이름: ");
        String name = sc.next();
        System.out.print("새 LCK 타이틀 수: ");
        int lckTitles = sc.nextInt();
        System.out.print("새 Worlds 타이틀 수: ");
        int worldsTitles = sc.nextInt();
        System.out.print("새 팀 색상: ");
        String color = sc.next();
        System.out.print("새 팀 헤드코치: ");
        String headCoach = sc.next();

        TeamDto updatedTeam = new TeamDto(id, name, lckTitles, worldsTitles, color, headCoach);
        teamController.updateTeam(updatedTeam);
        System.out.println("팀 정보가 수정되었습니다.");
    }
    
    private void getTeam() {
    	System.out.println("조회할 팀 ID : ");
    	int id = sc.nextInt();
    	TeamDto team = teamController.getTeam(id);
    	
    	if(team != null) {
    		System.out.println("팀 정보 : " + team);
    	}else {
    		System.out.println("해당 팀을 찾을 수 없음");
    	}
    }
    
    private void deleteTeam() {
    	System.out.println("삭제할 팀 ID : ");
    	int id = sc.nextInt();
    	teamController.deleteTeam(id);
    	System.out.println("팀 삭제 완료 ");
    }
	
}



