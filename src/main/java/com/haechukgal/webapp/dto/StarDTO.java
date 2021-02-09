package com.haechukgal.webapp.dto;

public class StarDTO {
	private int star_no;
	private int member_no;
	private String teamname;
	private String leagueName;
	
	public String getLeagueName() {
		return leagueName;
	}
	public void setLeagueName(String leagueName) {
		this.leagueName = leagueName;
	}
	public int getStar_no() {
		return star_no;
	}
	public void setStar_no(int star_no) {
		this.star_no = star_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
}
