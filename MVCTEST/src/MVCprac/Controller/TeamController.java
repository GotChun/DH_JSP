// Controller 패키지 - TeamController 클래스
package MVCprac.Controller;

import java.sql.SQLException;
import java.util.List;

import MVCprac.Domain.TeamDto;
import MVCprac.Service.TeamService;

public class TeamController {
    private TeamService teamService;

    public TeamController(TeamService teamService) {
        this.teamService = teamService;
    }

    public void createTeam(TeamDto team) {
        try {
            teamService.addTeam(team);
        } catch (SQLException e) {
            handleException(e);
        }
    }

    public TeamDto viewTeam(int teamId) {
        try {
            return teamService.getTeam(teamId);
        } catch (SQLException e) {
            handleException(e);
            return null;
        }
    }

    public List<TeamDto> viewAllTeams() {
        try {
            return teamService.getAllTeams();
        } catch (SQLException e) {
            handleException(e);
            return null;
        }
    }

    public void updateTeam(TeamDto team) {
        try {
            teamService.modifyTeam(team);
        } catch (SQLException e) {
            handleException(e);
        }
    }

    public void deleteTeam(int teamId) {
        try {
            teamService.removeTeam(teamId);
        } catch (SQLException e) {
            handleException(e);
        }
    }

    // 예외를 일괄 처리하는 메서드
    private void handleException(Exception e) {
        System.out.println("오류가 발생했습니다: " + e.getMessage());
        e.printStackTrace();
    }
}
