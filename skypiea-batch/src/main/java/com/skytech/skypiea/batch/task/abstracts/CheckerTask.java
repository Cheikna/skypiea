package com.skytech.skypiea.batch.task.abstracts;

import java.util.TimerTask;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.skytech.skypiea.api.service.ApplicationParameterService;
import com.skytech.skypiea.commons.entity.ApplicationParameter;
import com.skytech.skypiea.commons.enumeration.Parameter;
import com.skytech.skypiea.commons.util.DateUtil;

public abstract class CheckerTask extends TimerTask {
	
	private static Logger log = LoggerFactory.getLogger(CheckerTask.class);
	private int disableTimeCount = 0;
	
	@Autowired
	private ApplicationParameterService applicationParameterService;

	/** 
	 * Run the job if the parameter is the database is missing or set to true	
	 * 
	 * @param isBatchActiveParameter : the concerned isBatchActive parameter
	 * @param lastBatchUpdateParameter : the concerned lastBatchUpdate parameter
	 * 
	 * 
	 */
	protected void run(Parameter isBatchActiveParameter, Parameter lastBatchUpdateParameter) {
		try {
			ApplicationParameter parameterValue = applicationParameterService.findByParameter(isBatchActiveParameter);
			// By default the batch is active
			Boolean isBatchActive = true;
			
			// If the parameter exists in the database and its value is equal to false
			if(parameterValue != null && !Boolean.valueOf(parameterValue.getValue())) {
				disableTimeCount++;			
				isBatchActive = false;
				
				// log to tell that the batch is not running 
				if(disableTimeCount % 10 == 0) {
					log.info(isBatchActiveParameter + " is set to 'false' in the database. Consequently the batch is not running !");
				}
			}
			
			if(isBatchActive) {
				// Run the job defined in the specialized class (like RoomObjectsCheckerTask)
				runJob();			
				// Saving the last update date
				applicationParameterService.createOrSave(lastBatchUpdateParameter, DateUtil.getCurrentTimestamp().toString());
			}
			
		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}
	
	protected abstract void runJob();

}
