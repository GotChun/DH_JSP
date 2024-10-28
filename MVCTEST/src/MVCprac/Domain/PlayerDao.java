package lck.domain.dao;

import lck.domain.dto.PlayerDto;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PlayerDao {
    private Connection connection;

    public PlayerDao(Connection connection) {
        this.connection = connection;
    }

    // 플레이어 생성
    public void insertPlayer(PlayerDto player) throws SQLException {
        String query = "INSERT INTO Player (player_id, team_id, player_name, in_game_name, position, age) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, player.getPlayerId());
            pstmt.setInt(2, player.getTeamId());
            pstmt.setString(3, player.getPlayerName());
            pstmt.setString(4, player.getInGameName());
            pstmt.setString(5, player.getPosition());
            pstmt.setInt(6, player.getAge());
            pstmt.executeUpdate();
        }
    }

    // 특정 플레이어 조회
    public PlayerDto selectPlayer(int playerId) throws SQLException {
        String query = "SELECT * FROM Player WHERE player_id = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, playerId);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return new PlayerDto(
                    rs.getInt("player_id"),
                    rs.getInt("team_id"),
                    rs.getString("player_name"),
                    rs.getString("in_game_name"),
                    rs.getString("position"),
                    rs.getInt("age")
                );
            }
        }
        return null;
    }

    // 모든 플레이어 조회
    public List<PlayerDto> selectAllPlayers() throws SQLException {
        List<PlayerDto> players = new ArrayList<>();
        String query = "SELECT * FROM Player";
        try (Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                players.add(new PlayerDto(
                    rs.getInt("player_id"),
                    rs.getInt("team_id"),
                    rs.getString("player_name"),
                    rs.getString("in_game_name"),
                    rs.getString("position"),
                    rs.getInt("age")
                ));
            }
        }
        return players;
    }

    // 플레이어 업데이트
    public void updatePlayer(PlayerDto player) throws SQLException {
        String query = "UPDATE Player SET team_id = ?, player_name = ?, in_game_name = ?, position = ?, age = ? WHERE player_id = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, player.getTeamId());
            pstmt.setString(2, player.getPlayerName());
            pstmt.setString(3, player.getInGameName());
            pstmt.setString(4, player.getPosition());
            pstmt.setInt(5, player.getAge());
            pstmt.setInt(6, player.getPlayerId());
            pstmt.executeUpdate();
        }
    }

    // 플레이어 삭제
    public void deletePlayer(int playerId) throws SQLException {
        String query = "DELETE FROM Player WHERE player_id = ?";
        try (PreparedStatement pstmt = connection.prepareStatement(query)) {
            pstmt.setInt(1, playerId);
            pstmt.executeUpdate();
        }
    }
}
