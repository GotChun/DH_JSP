package MVCprac.Domain;

public class PlayerDto {
    private int playerId;
    private int teamId;
    private String playerName;
    private String inGameName;
    private String position;
    private int age;

    // 기본 생성자
    public PlayerDto() {}

    // 매개변수 생성자
    public PlayerDto(int playerId, int teamId, String playerName, String inGameName, String position, int age) {
        this.playerId = playerId;
        this.teamId = teamId;
        this.playerName = playerName;
        this.inGameName = inGameName;
        this.position = position;
        this.age = age;
    }

    // getter와 setter 메소드
    public int getPlayerId() { return playerId; }
    public void setPlayerId(int playerId) { this.playerId = playerId; }
    public int getTeamId() { return teamId; }
    public void setTeamId(int teamId) { this.teamId = teamId; }
    public String getPlayerName() { return playerName; }
    public void setPlayerName(String playerName) { this.playerName = playerName; }
    public String getInGameName() { return inGameName; }
    public void setInGameName(String inGameName) { this.inGameName = inGameName; }
    public String getPosition() { return position; }
    public void setPosition(String position) { this.position = position; }
    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }
}
