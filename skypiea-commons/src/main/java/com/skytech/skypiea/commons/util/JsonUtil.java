package com.skytech.skypiea.commons.util;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.skytech.skypiea.commons.message.Message;

public class JsonUtil {

	private static ObjectMapper mapper = new ObjectMapper();

	public static String serializeMessage(Message message) {
		String jsonResult = "";
		try {
			jsonResult = mapper.writeValueAsString(message);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return jsonResult;
	}
	
	public static Message deserializeMessage(String messageInJson) {
		Message message = null;
		try {
			message = mapper.readValue(messageInJson, Message.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return message;
	}
}