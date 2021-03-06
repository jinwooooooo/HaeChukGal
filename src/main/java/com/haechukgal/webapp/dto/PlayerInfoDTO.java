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
	private int game;			// ?????? ???
	private int score;			// ??? ???
	private String playerName;  // ?????? ??????
	private int assist; 	  	// ??? ???
	private int attackPoint; 	// ?????? ?????????
	private int shoot;		 	// ?????? ???
	private int shootOnTarget;  // ????????????
	private int foul;			// ??? ???
	private int yellowCard;		// ??? ???
	private int redCard;		// ??? ???
	private int offSide;		// ???????????????
	private String teamName;	// ?????? ??? ??????
	private String playerImage; // ?????? ??????
	private String p_leagueName;	// ?????? ??????
	private int rank; 			// ??????
	private String p_season;			// ??????
}
