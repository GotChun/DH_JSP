package MVCprac.Domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class TeamDao {
	PreparedStatement pstmt;
	Connection conn;
	ResultSet rs;
	public void insertTeam(TeamDto team) {
	

	String sql = "insert into team_tbl values(?,?,?,?,?,?)";
	try {
		conn = ConnectorDB.getConnection();
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, team.getTeamid());
		pstmt.setString(2, team.getTeamname());
		pstmt.setInt(3, team.getLcktitles());
		pstmt.setInt(4, team.getWorldstitles());
		pstmt.setString(5, team.getTeamcolor());
		pstmt.setString(6, team.getTeamheadcoach());

		pstmt.executeUpdate();
	}catch(Exception e) {
		e.printStackTrace();
	}
	finally {
		ConnectorDB.close(conn);
	}
	
	}
	
	
	public void selectTeam(int Teamid) {
		TeamDto team = null;
		String sql = "select * from team_tbl where teamId=?";
		try {
			conn = ConnectorDB.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Teamid);
			if(rs.next()) {
				TeamDto teamDto = new TeamDto();
				teamDto.setTeamid(rs.getInt("teamId"));
				teamDto.setTeamname(rs.getString("team_name"));
				teamDto.setLcktitles(rs.getInt("lck_titles"));
				teamDto.setWorldstitles(rs.getInt("worlds_titles"));
				teamDto.setTeamcolor(rs.getString("team_color"));
				teamDto.setTeamheadcoach(rs.getString("team_headcoach"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectorDB.close(conn);
		}
	}
	
}
