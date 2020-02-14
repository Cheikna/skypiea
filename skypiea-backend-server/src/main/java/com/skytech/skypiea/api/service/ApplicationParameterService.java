package com.skytech.skypiea.api.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.repository.ApplicationParameterRepository;
import com.skytech.skypiea.commons.entity.ApplicationParameter;
import com.skytech.skypiea.commons.enumeration.Parameter;

@Service
public class ApplicationParameterService {

	private static Logger log = LoggerFactory.getLogger(ApplicationParameterService.class);
	
	@Autowired
	private ApplicationParameterRepository applicationParameterRepository;
	
	public ApplicationParameter findByParameter(Parameter parameter) {
		ApplicationParameter applicationParameter = null;
		
		try {
			List<ApplicationParameter> applicationParameters = applicationParameterRepository.findByParameter(parameter);
			if(applicationParameters == null || applicationParameters.size() == 0) {
				throw new Exception("The parameter " + parameter + " could not be found in the database");
			}
			applicationParameter = applicationParameters.get(0);
		} catch(Exception e) {
			log.error("Could not find the parameter named : " + parameter.name());
			log.error(e.getMessage());
		}	
		
		return applicationParameter;		
	}
	
	public ApplicationParameter createOrSave(Parameter parameter, String value) {
		ApplicationParameter applicationParameter = null;
		ApplicationParameter applicationParameterCreated = null;
		try {
			// Checking if the value exists
			applicationParameter = findByParameter(parameter);
			
			// Creating the new application parameter if it does not exist
			if(applicationParameter == null) {
				applicationParameter = new ApplicationParameter();
				applicationParameter.setParameter(parameter);
				applicationParameter.setValue(value);
			}
			else {
				applicationParameter.setValue(value);
			}
			
			// Save the application parameter
			applicationParameterCreated = applicationParameterRepository.saveAndFlush(applicationParameter);
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		
		return applicationParameterCreated;
	}
	
	public List<ApplicationParameter> findAll(){
		List<ApplicationParameter> parameters = new ArrayList<ApplicationParameter>();
		try {
			parameters = applicationParameterRepository.findAll();
		} catch (Exception e) {
			log.error(e.getMessage());
		}
		return parameters;		
	}

}
