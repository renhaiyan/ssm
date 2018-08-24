package com.self.pojo;

/**
 * 消息类
 * @author rhy
 * @2017-10-26 下午5:55:23
 * @version v1.0
 */
public class Message {

	private String id;
	private String username;
	private String messages;
	private String isSend;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMessages() {
		return messages;
	}
	public void setMessages(String messages) {
		this.messages = messages;
	}
	public String getIsSend() {
		return isSend;
	}
	public void setIsSend(String isSend) {
		this.isSend = isSend;
	}
	
	
}
