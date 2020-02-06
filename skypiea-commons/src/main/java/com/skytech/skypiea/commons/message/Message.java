package com.skytech.skypiea.commons.message;

import com.skytech.skypiea.commons.enumeration.MessageSender;

public class Message {
	
	private Long objectId;
	private MessageSender messageSender;
	private String value1;
	private String value2;
	private String ipAddress;
	
	public Message(Long objectId, MessageSender messageSender, String value1, String value2) {
		this.objectId = objectId;
		this.messageSender = messageSender;
		this.value1 = value1;
		this.value2 = value2;
	}
	
	public Message(String ipAddress, MessageSender messageSender, String value1, String value2) {
		this.ipAddress = ipAddress;
		this.messageSender = messageSender;
		this.value1 = value1;
		this.value2 = value2;
	}
	
	public Message() {
		// Empty constructor
	}

	public Long getObjectId() {
		return objectId;
	}

	public void setObjectId(Long objectId) {
		this.objectId = objectId;
	}

	public MessageSender getMessageSender() {
		return messageSender;
	}

	public void setMessageSender(MessageSender messageSender) {
		this.messageSender = messageSender;
	}

	public String getValue1() {
		return value1;
	}

	public void setValue1(String value1) {
		this.value1 = value1;
	}

	public String getValue2() {
		return value2;
	}

	public void setValue2(String value2) {
		this.value2 = value2;
	}
	

	public String getIpAddress() {
		return ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	@Override
	public String toString() {
		return "Message [objectId=" + objectId + ", messageSender=" + messageSender + ", value1=" + value1 + ", value2="
				+ value2 + ", ipAddress=" + ipAddress + "]";
	}

}
