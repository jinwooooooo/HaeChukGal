package com.haechukgal.webapp.dto;

public class TeamInfoDTO {

	public long getTeam_no() {
		return team_no;
	}
	public void setTeam_no(long team_no) {
		this.team_no = team_no;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getTeamName() {
		return TeamName;
	}
	public void setTeamName(String teamName) {
		TeamName = teamName;
	}
	public String getTeamImage() {
		return TeamImage;
	}
	public void setTeamImage(String teamImage) {
		TeamImage = teamImage;
	}
	public int getGame() {
		return game;
	}
	public void setGame(int game) {
		this.game = game;
	}
	public int getWin() {
		return win;
	}
	public void setWin(int win) {
		this.win = win;
	}
	public int getDraw() {
		return draw;
	}
	public void setDraw(int draw) {
		this.draw = draw;
	}
	public int getLoss() {
		return loss;
	}
	public void setLoss(int loss) {
		this.loss = loss;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public int getLossPoint() {
		return lossPoint;
	}
	public void setLossPoint(int lossPoint) {
		this.lossPoint = lossPoint;
	}
	public int getGapScore() {
		return gapScore;
	}
	public void setGapScore(int gapScore) {
		this.gapScore = gapScore;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getT_season() {
		return t_season;
	}
	public void setT_season(String t_season) {
		this.t_season = t_season;
	}
	public String getT_leagueName() {
		return t_leagueName;
	}
	public void setT_leagueName(String t_leagueName) {
		this.t_leagueName = t_leagueName;
	}
	private long team_no;
	private int rank;
	private String TeamName;
	private String TeamImage;
	private int game;		// 경기
	private int win;		// 승리
	private int draw; 		// 무승부 
	private int loss;		// 패배
	private int score;		// 득점
	private int lossPoint;	// 실점
	private int gapScore;	// 득실차
	private int point;		// 승점
	private String t_season;		// 시즌
	private String t_leagueName;	// 리그이름
}
