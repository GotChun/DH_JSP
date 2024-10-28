package MVCprac.Service;

import java.sql.SQLException;
import java.util.List;

import MVCprac.Domain.TeamDao;
import MVCprac.Domain.TeamDto;

public class TeamService {
    private TeamDao teamDao;

    public TeamService(TeamDao teamDao) {
        this.teamDao = teamDao;
    }

    public void addTeam(TeamDto team) throws SQLException {
        teamDao.insertTeam(team);
    }

    public TeamDto getTeam(int teamId) throws SQLException {
        return teamDao.selectTeam(teamId);
    }

    public List<TeamDto> getAllTeams() throws SQLException {
        return teamDao.selectAllTeams();
    }

    public void modifyTeam(TeamDto team) throws SQLException {
        teamDao.updateTeam(team);
    }

    public void removeTeam(int teamId) throws SQLException {
        teamDao.deleteTeam(teamId);
    }
}