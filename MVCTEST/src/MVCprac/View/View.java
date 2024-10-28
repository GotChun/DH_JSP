// View.java
package MVCprac.View;

import java.sql.SQLException;
import java.util.Scanner;

import MVCprac.Controller.TeamController;
import MVCprac.Domain.TeamDto;

public class View {
    private TeamController teamController;
    private Scanner scanner = new Scanner(System.in);

    public View(TeamController teamController) {
        this.teamController = teamController;
    }

    public void run() {
        boolean exit = false;
        while (!exit) {
            displayMenu();
            int choice = Integer.parseInt(scanner.nextLine());
            try {
                switch (choice) {
                    case 1 : createTeam(); // 팀 생성
                    case 2 : viewTeam();   // 특정 팀 조회
                    case 3 : viewAllTeams(); // 모든 팀 조회
                    case 4 : updateTeam(); // 팀 업데이트
                    case 5 : deleteTeam(); // 팀 삭제
                    case 6 : exit = true;  // 종료
                    default : System.out.println("올바른 번호를 선택해주세요.");
                }
            } catch (SQLException e) {
                System.out.println("데이터베이스 오류: " + e.getMessage());
            }
        }
    }

    private void displayMenu() {
        System.out.println("1. 팀 생성");
        System.out.println("2. 팀 조회");
        System.out.println("3. 모든 팀 조회");
        System.out.println("4. 팀 업데이트");
        System.out.println("5. 팀 삭제");
        System.out.println("6. 종료");
        System.out.print("선택: ");
    }

    private void createTeam() throws SQLException {
        System.out.print("팀 ID: ");
        int teamId = Integer.parseInt(scanner.nextLine());
        System.out.print("팀 이름: ");
        String teamName = scanner.nextLine();
        System.out.print("LCK 우승 횟수: ");
        int lckTitles = Integer.parseInt(scanner.nextLine());
        System.out.print("월드 챔피언십 우승 횟수: ");
        int worldsTitles = Integer.parseInt(scanner.nextLine());
        System.out.print("팀 색상: ");
        String teamColor = scanner.nextLine();
        System.out.print("팀 감독: ");
        String teamHeadcoach = scanner.nextLine();

        TeamDto team = new TeamDto(teamId, teamName, lckTitles, worldsTitles, teamColor, teamHeadcoach);
        teamController.createTeam(team);
        System.out.println("팀이 생성되었습니다.");
    }

    private void viewTeam() throws SQLException {
        System.out.print("조회할 팀 ID: ");
        int teamId = Integer.parseInt(scanner.nextLine());
        TeamDto team = teamController.viewTeam(teamId);
        if (team != null) {
            System.out.println("팀 정보: " + team);
        } else {
            System.out.println("해당 팀을 찾을 수 없습니다.");
        }
    }

    private void viewAllTeams() throws SQLException {
        teamController.viewAllTeams().forEach(System.out::println);
    }

    private void updateTeam() throws SQLException {
        System.out.print("수정할 팀 ID: ");
        int teamId = Integer.parseInt(scanner.nextLine());
        System.out.print("새 팀 이름: ");
        String teamName = scanner.nextLine();
        System.out.print("새 LCK 우승 횟수: ");
        int lckTitles = Integer.parseInt(scanner.nextLine());
        System.out.print("새 월드 챔피언십 우승 횟수: ");
        int worldsTitles = Integer.parseInt(scanner.nextLine());
        System.out.print("새 팀 색상: ");
        String teamColor = scanner.nextLine();
        System.out.print("새 팀 감독: ");
        String teamHeadcoach = scanner.nextLine();

        TeamDto team = new TeamDto(teamId, teamName, lckTitles, worldsTitles, teamColor, teamHeadcoach);
        teamController.updateTeam(team);
        System.out.println("팀 정보가 업데이트되었습니다.");
    }

    private void deleteTeam() throws SQLException {
        System.out.print("삭제할 팀 ID: ");
        int teamId = Integer.parseInt(scanner.nextLine());
        teamController.deleteTeam(teamId);
        System.out.println("팀이 삭제되었습니다.");
    }
}
