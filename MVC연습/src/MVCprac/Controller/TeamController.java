// Controller 패키지 - TeamController 클래스
package MVCprac.Controller;

import MVCprac.Domain.TeamDto;
import MVCprac.Service.TeamService;

public class TeamController {
    private TeamService teamService;
    public TeamController(TeamService teamService) {
    	this.teamService = teamService;
    }
  
    
    public void createTeam(TeamDto teamDto) {
    	teamService.add(teamDto);
    }
    
    public void updateTeam(TeamDto teamDto) {
    	teamService.update(teamDto);
    }
    
    public TeamDto getTeam(int teamId) {
    	return teamService.select(teamId);

    }
    
    public void deleteTeam(int teamId) {
    	teamService.delete(teamId);
    }
    
}
