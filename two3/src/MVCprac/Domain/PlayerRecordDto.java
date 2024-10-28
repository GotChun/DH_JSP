package MVCprac.Domain;

public class PlayerRecordDto {
    private int totalKills;
    private int totalAssists;
    private int totalDeath;
    private int totalGamesPlayed;
    private int totalWins;
    private int totalLosses;
    private int totalTrophy;
    private int playerId;

    // 기본 생성자
    public PlayerRecordDto() {}

    // 매개변수 생성자
    public PlayerRecordDto(int totalKills, int totalAssists, int totalDeath, int totalGamesPlayed, int totalWins, int totalLosses, int totalTrophy, int playerId) {
        this.totalKills = totalKills;
        this.totalAssists = totalAssists;
        this.totalDeath = totalDeath;
        this.totalGamesPlayed = totalGamesPlayed;
        this.totalWins = totalWins;
        this.totalLosses = totalLosses;
        this.totalTrophy = totalTrophy;
        this.playerId = playerId;
    }

    // getter와 setter 메소드
    public int getTotalKills() { return totalKills; }
    public void setTotalKills(int totalKills) { this.totalKills = totalKills; }
    public int getTotalAssists() { return totalAssists; }
    public void setTotalAssists(int totalAssists) { this.totalAssists = totalAssists; }
    public int getTotalDeath() { return totalDeath; }
    public void setTotalDeath(int totalDeath) { this.totalDeath = totalDeath; }
    public int getTotalGamesPlayed() { return totalGamesPlayed; }
    public void setTotalGamesPlayed(int totalGamesPlayed) { this.totalGamesPlayed = totalGamesPlayed; }
    public int getTotalWins() { return totalWins; }
    public void setTotalWins(int totalWins) { this.totalWins = totalWins; }
    public int getTotalLosses() { return totalLosses; }
    public void setTotalLosses(int totalLosses) { this.totalLosses = totalLosses; }
    public int getTotalTrophy() { return totalTrophy; }
    public void setTotalTrophy(int totalTrophy) { this.totalTrophy = totalTrophy; }
    public int getPlayerId() { return playerId; }
    public void setPlayerId(int playerId) { this.playerId = playerId; }
}
