package com.haechukgal.webapp.dto;

public class PlayerInfoDTO {
	public long getPlayer_no() {
		return player_no;
	}
	public void setPlayer_no(long player_no) {
		this.player_no = player_no;
	}
	public int getGame() {
		return game;
	}
	public void setGame(int game) {
		this.game = game;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public String getPlayerName() {
		return playerName;
	}
	public void setPlayerName(String playerName) {
		this.playerName = playerName;
	}
	public int getAssist() {
		return assist;
	}
	public void setAssist(int assist) {
		this.assist = assist;
	}
	public int getAttackPoint() {
		return attackPoint;
	}
	public void setAttackPoint(int attackPoint) {
		this.attackPoint = attackPoint;
	}
	public int getShoot() {
		return shoot;
	}
	public void setShoot(int shoot) {
		this.shoot = shoot;
	}
	public int getShootOnTarget() {
		return shootOnTarget;
	}
	public void setShootOnTarget(int shootOnTarget) {
		this.shootOnTarget = shootOnTarget;
	}
	public int getFoul() {
		return foul;
	}
	public void setFoul(int foul) {
		this.foul = foul;
	}
	public int getYellowCard() {
		return yellowCard;
	}
	public void setYellowCard(int yellowCard) {
		this.yellowCard = yellowCard;
	}
	public int getRedCard() {
		return redCard;
	}
	public void setRedCard(int redCard) {
		this.redCard = redCard;
	}
	public int getOffSide() {
		return offSide;
	}
	public void setOffSide(int offSide) {
		this.offSide = offSide;
	}
	public String getTeamName() {
		return teamName;
	}
	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}
	public String getPlayerImage() {
		return playerImage;
	}
	public void setPlayerImage(String playerImage) {
		this.playerImage = playerImage;
	}
	public String getP_leagueName() {
		return p_leagueName;
	}
	public void setP_leagueName(String p_leagueName) {
		this.p_leagueName = p_leagueName;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getP_season() {
		return p_season;
	}
	public void setP_season(String p_season) {
		this.p_season = p_season;
	}
	private long player_no;
	private int game;			// 경기 수
	private int score;			// 득 점
	private String playerName;  // 선수 이름
	private int assist; 	  	// 도 움
	private int attackPoint; 	// 공격 포인트
	private int shoot;		 	// 슈팅 수
	private int shootOnTarget;  // 유효슈팅
	private int foul;			// 파 울
	private int yellowCard;		// 경 고
	private int redCard;		// 퇴 장
	private int offSide;		// 오프사이드
	private String teamName;	// 소속 팀 이름
	private String playerImage; // 선수 사진
	private String p_leagueName;	// 리그 이름
	private int rank; 			// 순위
	private String p_season;			// 시즌
}
