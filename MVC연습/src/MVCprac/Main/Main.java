// Main.java
package MVCprac.Main;

import MVCprac.Controller.TeamController;
import MVCprac.Service.TeamService;
import MVCprac.View.View;

public class Main {
    public static void main(String[] args) {
    	TeamService teamService = new TeamService();
    	TeamController teamController = new TeamController(teamService);
    	
    	View view = new View(teamController);
    		view.run();
    }
}
