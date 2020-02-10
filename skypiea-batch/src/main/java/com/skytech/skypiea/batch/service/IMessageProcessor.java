package com.skytech.skypiea.batch.service;

import com.skytech.skypiea.commons.message.Message;

public interface IMessageProcessor {
	
	public void processObjectMessage(Message message);

}
