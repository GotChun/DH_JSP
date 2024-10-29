package MVCprac.Domain;

public class TeamDto {
	private int teamid;
	private String teamname;
	private int lcktitles;
	private int worldstitles;
	private String teamcolor;
	private String teamheadcoach;
	public int getTeamid() {
		return teamid;
	}
	public void setTeamid(int teamid) {
		this.teamid = teamid;
	}
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	public int getLcktitles() {
		return lcktitles;
	}
	public void setLcktitles(int lcktitles) {
		this.lcktitles = lcktitles;
	}
	public int getWorldstitles() {
		return worldstitles;
	}
	public void setWorldstitles(int worldstitles) {
		this.worldstitles = worldstitles;
	}
	public String getTeamcolor() {
		return teamcolor;
	}
	public void setTeamcolor(String teamcolor) {
		this.teamcolor = teamcolor;
	}
	public String getTeamheadcoach() {
		return teamheadcoach;
	}
	public void setTeamheadcoach(String teamheadcoach) {
		this.teamheadcoach = teamheadcoach;
	}
	@Override
	public String toString() {
		return "TeamDto [teamid=" + teamid + ", teamname=" + teamname + ", lcktitles=" + lcktitles + ", worldstitles="
				+ worldstitles + ", teamcolor=" + teamcolor + ", teamheadcoach=" + teamheadcoach + "]";
	}
	public TeamDto(int teamid, String teamname, int lcktitles, int worldstitles, String teamcolor,
			String teamheadcoach) {
		super();
		this.teamid = teamid;
		this.teamname = teamname;
		this.lcktitles = lcktitles;
		this.worldstitles = worldstitles;
		this.teamcolor = teamcolor;
		this.teamheadcoach = teamheadcoach;
	}
	public TeamDto() {
		super();
	}
	
	
}
