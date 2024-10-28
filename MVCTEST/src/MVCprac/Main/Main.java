// Main.java
package MVCprac.Main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import MVCprac.Controller.TeamController;
import MVCprac.Domain.TeamDao;
import MVCprac.Service.TeamService;
import MVCprac.View.View;

public class Main {
    public static void main(String[] args) {
        try {
            // 데이터베이스 연결 설정 (JDBC URL, 사용자명, 비밀번호를 알맞게 설정)
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/lckdb", "root", "1234");
            TeamDao teamDao = new TeamDao(connection);
            TeamService teamService = new TeamService(teamDao);
            TeamController teamController = new TeamController(teamService);
            View view = new View(teamController);

            // 메뉴 출력 및 사용자 입력 처리
            view.run();

            connection.close(); // 데이터베이스 연결 종료
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
