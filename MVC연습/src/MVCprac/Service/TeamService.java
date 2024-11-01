package MVCprac.Service;

import java.util.List;

import MVCprac.Domain.TeamDao;
import MVCprac.Domain.TeamDto;

public class TeamService implements Service<TeamDto>{

	
	private TeamDao teamDao;
	
	public TeamService() {
		this.teamDao = new TeamDao(); 
				}
	@Override
	public void add(TeamDto teamDto) {
		// TODO Auto-generated method stub
		teamDao.insert(teamDto);
		System.out.println("팀 삽입 성공");
	}

	@Override
	public void update(TeamDto teamDto) {
		// TODO Auto-generated method stub
		teamDao.update(teamDto);
		System.out.println("팀 수정 완료");
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		teamDao.delete(id);
		System.out.println("팀 삭제 완료");
	}

	@Override
	public TeamDto select(int id) {
		// TODO Auto-generated method stub
		
		return teamDao.select(id);
	}

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		return teamDao.selectAll();
	}
	
	
	
}