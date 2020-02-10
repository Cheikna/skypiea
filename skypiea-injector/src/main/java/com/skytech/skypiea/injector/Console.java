package com.skytech.skypiea.injector;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import java.util.function.Predicate;

import com.skytech.skypiea.injector.mock.healthcare.HealthControlMock;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.validator.GenericValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.injector.mock.abstracts.Mock;
import com.skytech.skypiea.injector.mock.failure.FailureMessageMock;
import com.skytech.skypiea.injector.mock.monitoring.NonMedicalObjectMessageMock;
import com.skytech.skypiea.injector.mock.user.UserMock;
import com.skytech.skypiea.injector.util.ScannerUtil;

@Service
public class Console {

	private List<Mock> mocks;
	private int mocksSize;
	private String mockDisplayNames;

	/******* BEGIN MOCKS DECLARATION *******/
	@Autowired
	private UserMock userMock;
	@Autowired
	private NonMedicalObjectMessageMock nonMedicalObjectMessageMock;
	@Autowired
	private FailureMessageMock failureMessageMock;
	@Autowired
	private HealthControlMock healthControlMock;
	
	
	/******* END MOCKS DECLARATION *******/

	public void run() {	
		// Set the info about the existing mock
		declareMocks();
		String question = "Enter your the index of the mock you want : ";
		Scanner sc = new Scanner(System.in);
		boolean wantToQuit = false;
		
		while(!wantToQuit) {
			System.out.println(mockDisplayNames);	
			String mockChoice = ScannerUtil.askForString(sc, question, correctMockChoice());
			
			if(!ScannerUtil.wantToQuit(mockChoice)) {
				int mockIndex = NumberUtils.toInt(mockChoice, -9);
				Mock mockToLaunch = mocks.get(mockIndex);
				System.out.println("\n======= " + mockToLaunch.getMockName() + " =======");
				mockToLaunch.start(sc);
			} else {
				wantToQuit = true;
			}
		}
		clearInjectedDatas(sc);
		sc.close();
		System.exit(0);
	}
	
	/*
	 * The predicate returns true if :
	 * - it is the 'q' letter which means that the user wants to quit
	 * - it is a number between 0 (included) and the size (excluded) of the mocks list
	 */
	private Predicate<String> correctMockChoice(){
		return (str) -> {
			int number = NumberUtils.toInt(str, -9);
			return ScannerUtil.wantToQuit(str)
				|| (number != -9 && number >= 0 && number < mocksSize);
		};
			
	}

	private void declareMocks() {
		mocks = new ArrayList<Mock>();
		
		/********** BEGIN MOCKS ADDING **********/
		mocks.add(userMock);
		mocks.add(nonMedicalObjectMessageMock);
		mocks.add(failureMessageMock);
		mocks.add(healthControlMock);
		/********** END MOCKS ADDING **********/

		mockDisplayNames = "\n====== List of mock(s) : ======\n";		
		mocksSize = mocks.size();
		initMockDisplayNames();
	}

	private void initMockDisplayNames() {		
		for(int index = 0; index < mocksSize; index++) {
			mockDisplayNames += index + ". " +  mocks.get(index).getMockName() + "\n";
		}
		mockDisplayNames += "Press 'q' and enter to quit\n";
	}
	
	private void clearInjectedDatas(Scanner sc) {
		System.out.print("Do you want to clear the injected data (y/N) ? [y]: ");
		String choice = sc.nextLine();
		if(GenericValidator.isBlankOrNull(choice) || choice.trim().equalsIgnoreCase("y")) {
			mocks.forEach(mock -> mock.clearInjectedData());
		}
	}

}
