package MVCprac.Domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TeamDao {
    private Connection connection;

    public TeamDao(Connection connection) {
        this.connection = connection;
    }

    // 팀 생성
    public void insertTeam(TeamDto team) throws SQLException {
        String query = "INSERT INTO Team (team_id, team_name, lck_titles, worlds_titles, team_color, team_headcoach) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, team.getTeamid());
            pstmt.setString(2, team.getTeamname());
            pstmt.setInt(3, team.getLcktitles());
            pstmt.setInt(4, team.getWorldstitles());
            pstmt.setString(5, team.getTeamcolor());
            pstmt.setString(6, team.getTeamheadcoach());
            pstmt.executeUpdate();
        }
    }

    // 특정 팀 조회
    public TeamDto selectTeam(int teamId) throws SQLException {
        String query = "SELECT * FROM Team WHERE team_id = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, teamId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return new TeamDto(
                    rs.getInt("team_id"),
                    rs.getString("team_name"),
                    rs.getInt("lck_titles"),
                    rs.getInt("worlds_titles"),
                    rs.getString("team_color"),
                    rs.getString("team_headcoach")
                );
            }
        }
        return null;
    }

    // 모든 팀 조회
    public List<TeamDto> selectAllTeams() throws SQLException {
        List<TeamDto> teams = new ArrayList<>();
        String query = "SELECT * FROM Team";
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                teams.add(new TeamDto(
                    rs.getInt("team_id"),
                    rs.getString("team_name"),
                    rs.getInt("lck_titles"),
                    rs.getInt("worlds_titles"),
                    rs.getString("team_color"),
                    rs.getString("team_headcoach")
                ));
            }
        }
        return teams;
    }

    // 팀 업데이트
    public void updateTeam(TeamDto team) throws SQLException {
        String query = "UPDATE Team SET team_name = ?, lck_titles = ?, worlds_titles = ?, team_color = ?, team_headcoach = ? WHERE team_id = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setString(1, team.getTeamname());
            pstmt.setInt(2, team.getLcktitles());
            pstmt.setInt(3, team.getWorldstitles());
            pstmt.setString(4, team.getTeamcolor());
            pstmt.setString(5, team.getTeamheadcoach());
            pstmt.setInt(6, team.getTeamid());
            pstmt.executeUpdate();
        }
    }

    // 팀 삭제
    public void deleteTeam(int teamId) throws SQLException {
        String query = "DELETE FROM Team WHERE team_id = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, teamId);
            pstmt.executeUpdate();
        }
    }
}
