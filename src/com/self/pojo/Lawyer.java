package com.self.pojo;

import java.io.Serializable;

/**
 * 律师实体信息
 * @author rhy
 * @2017-10-11 下午3:54:26
 * @version v1.0
 */
public class Lawyer implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String username;
	private String network;
	private String card;
	private String attention;
	private String fans;
	private String microblog;
	private String intro;
	private String education;
	private String profession;

	public Lawyer(String username, String network, String card,
			String attention, String fans, String microblog, String intro,
			String education, String profession) {
		super();
		this.username = username;
		this.network = network;
		this.card = card;
		this.attention = attention;
		this.fans = fans;
		this.microblog = microblog;
		this.intro = intro;
		this.education = education;
		this.profession = profession;
	}
	public Lawyer() {
		super();
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNetwork() {
		return network;
	}
	public void setNetwork(String network) {
		this.network = network;
	}
	public String getCard() {
		return card;
	}
	public void setCard(String card) {
		this.card = card;
	}
	public String getAttention() {
		return attention;
	}
	public void setAttention(String attention) {
		this.attention = attention;
	}
	public String getFans() {
		return fans;
	}
	public void setFans(String fans) {
		this.fans = fans;
	}
	public String getMicroblog() {
		return microblog;
	}
	public void setMicroblog(String microblog) {
		this.microblog = microblog;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	
}
