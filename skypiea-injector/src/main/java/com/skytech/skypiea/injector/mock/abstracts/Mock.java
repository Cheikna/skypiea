package com.skytech.skypiea.injector.mock.abstracts;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import org.apache.commons.lang3.math.NumberUtils;
import org.springframework.web.client.RestTemplate;

import com.skytech.skypiea.commons.entity.Entity;

public abstract class Mock {
	
	protected String mockName;
	protected Scanner sc;
	protected final Long defaultNumber = -9L;

	private RestTemplate restTemplate;

	private Map<String, String> params;
	
	private final String baseURL = "http://localhost:8080/api";

	private String backendServerURL;


	/**
	 * @param mockName 
	 * @param requestMappingURL 
	 * 	is the value in the @RequestMapping("requestMappingURL") of the controller class
	 */
	public Mock(String mockName, String requestMappingURL) {
		this.backendServerURL = baseURL + requestMappingURL;
		this.mockName = mockName;
		params = new HashMap<String, String>();
		restTemplate = new RestTemplate();
		sc = new Scanner(System.in);
	}
	
	public abstract void start();
	
	public void stop() {
		sc.close();
	}

	/**
	 * 
	 * @param mappingURL the url inside the @GetMapping("mappingURL")
	 * @param id : the id of the entity we want to retrieve
	 * @return an entity and not a list of entity
	 */
	public Entity sendHttpGetRequest(String mappingURL, Long id) {
		params.put("id", id.toString());
		Entity result = restTemplate.getForObject(getEndpoint(mappingURL), Entity.class, params);	
		params.clear();
		return result;
	}
	
	/**
	 * 
	 * @param mappingURL : the url inside the @GetMapping("mappingURL")
	 * @param strId  id : the id of the entity we want to retrieve in string format
	 * @return
	 */
	public Entity sendHttpGetRequest(String mappingURL, String strId) {
		Long id = this.convertStringToLongForId(strId);
		if(id != defaultNumber) {
			return this.sendHttpGetRequest(mappingURL, id);
		}
		return null;
	}

	/**
	 * 
	 * @param mappingURL : the url inside the @PostMapping("mappingURL")
	 * @param entity : the entity we want to post, create
	 * @return
	 */
	public Entity sendHttpPostRequest(String mappingURL, Entity entity) {
		Entity result = restTemplate.postForObject(getEndpoint(mappingURL), entity, entity.getClass());		
		return result;
	}

	/**
	 * 
	 * @param mappingURL : the url inside the @PutMapping("mappingURL")
	 * @param entity: the entity we want to put, update
	 */
	public void sendHttpPutRequest(String mappingURL, Entity entity) {
		Long id = null;
		if(entity != null && (id = entity.getId()) != null) {
			params.put("id", id.toString());
			restTemplate.put(getEndpoint(mappingURL), params);
			params.clear();
		}
	}

	/**
	 * 
	 * @param mappingURL : the url inside the @DeleteMapping("mappingURL")
	 * @param id : the id of the entity we want to delete
	 */
	public void sendHttpDeleteRequest(String mappingURL, Long id) {
		params.put("id", id.toString());
		restTemplate.delete(getEndpoint(mappingURL), params );
		params.clear();
	}
	
	/**
	 * 
	 * @param mappingURL : the url inside the @DeleteMapping("mappingURL")
	 * @param strId : the id of the entity we want to delete in string format
	 */
	public void sendHttpDeleteRequest(String mappingURL, String strId) {
		Long id = this.convertStringToLongForId(strId);
		if(id != defaultNumber) {
			sendHttpDeleteRequest(mappingURL, id);
		}
	}

	private String getEndpoint(String mappingURL) {
		System.out.println(this.backendServerURL + mappingURL);
		return this.backendServerURL + mappingURL;
	}

	public String getMockName() {
		return mockName;
	}

	public void setMockName(String mockName) {
		this.mockName = mockName;
	}
	
	protected Long convertStringToLongForId(String strId) {
		Long id = NumberUtils.toLong(strId, defaultNumber);
		if(id == defaultNumber) {
			System.out.println("Cannot convert " + strId + " into a number !");
		}
		return id;
	}

}
