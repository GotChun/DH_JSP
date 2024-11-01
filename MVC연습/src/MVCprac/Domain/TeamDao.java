package MVCprac.Domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class TeamDao implements CRUDDao<TeamDto> {
	PreparedStatement pstmt;
	Connection conn;
	ResultSet rs;
	
	@Override
	public void insert(TeamDto team)  {
	
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
		try {
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	}
	
	
	
	@Override
	public TeamDto select(int Teamid) {
		TeamDto teamDto = null;
		String sql = "select * from team_tbl where teamId=?";
		try {
			conn = ConnectorDB.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Teamid);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				teamDto = new TeamDto();
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
		
		return teamDto;
	}
	
	

	@Override
	public void delete(int Teamid) {
		// TODO Auto-generated method stub
		String sql = "delete from team_tbl where teamId=?";
		try {
			conn = ConnectorDB.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, Teamid);
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectorDB.close(conn);
		}
	}
	
	

	@Override
	public void update(TeamDto teamDto) {
		// TODO Auto-generated method stub
		String sql = "update team_tbl set lck_titles=? where team_id=?";
		try {
			conn = ConnectorDB.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, teamDto.getLcktitles());
			pstmt.setInt(2, teamDto.getTeamid());
						
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ConnectorDB.close(conn);
		}
	}



	public List<TeamDto> selectAll() {
		// TODO Auto-generated method stub
		return null;
	}


	
}
