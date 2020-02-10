package com.skytech.skypiea.injector.mock.abstracts;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.function.Consumer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.jpa.repository.JpaRepository;

import com.skytech.skypiea.commons.entity.Entity;
import com.skytech.skypiea.commons.util.FileReader;
import com.skytech.skypiea.injector.util.ScannerUtil;

public abstract class Mock {
	
	private static Logger log = LoggerFactory.getLogger(Mock.class);
	
	/**
	 * Every time we create a new user (or other entity), we need to add the ID
	 * of the new user (or other entity) which have just been created.
	 * The data cleaner will read this list and deleted, from the database the entity which matches the ID of the list
	 */
	// List of the IDs which are created with this mocks and that we will delete at the end
	protected List<Long> createdIds = new ArrayList<Long>();
	
	public abstract void start(Scanner sc);

	public abstract String getMockName();
	
	public abstract void clearInjectedData();
	
	public void clearInjectedData(JpaRepository<? extends Entity, Long> repository) {
		System.out.println("======== " + this.getMockName() + " data cleaning ========");
		createdIds.forEach(id -> {
			try {
				System.out.println("====> Deleting entity with the ID : " + id);
				repository.deleteById(id);
			} catch (Exception e) {
				log.error(e.getMessage());
				e.printStackTrace();
			}
		});		
		System.out.println("==== " + this.getMockName() + " data cleaned !\n");
	}

	public List<Long> getCreatedIds() {
		return createdIds;
	}
	
	public void chooseFileLocationAndLaunch(Scanner sc, String projectMockFileLocation, Consumer<String> consumerToApplyOnFileLines) {
		String askForSystemFile = ScannerUtil.askForString(sc, "Read file from system (y/N) ? [N] ", null, "N");
		Boolean isSystemFile = askForSystemFile.equalsIgnoreCase("y");
		String filePath = null;
		
		if(isSystemFile) {
			String currentDirectory = FileReader.getCurrentDirectory();
			System.out.println("Current directory : " + currentDirectory);
			filePath = ScannerUtil.askForString(sc, "Enter the file path : ", null, "N");
		} else {
			filePath = projectMockFileLocation;
		}
		FileReader.readLine(filePath, consumerToApplyOnFileLines, isSystemFile);
	}
}
