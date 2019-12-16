package com.skytech.skypiea.injector;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.apache.commons.lang3.math.NumberUtils;

import com.skytech.skypiea.injector.mock.abstracts.Mock;

public class Console {
	
	private List<Mock> mocks;
	private int mocksSize;
	private String mockDisplayNames;

	public Console() {
		mocks = new ArrayList<Mock>();
		
		/********** BEGIN MOCKS ADDING **********/
		
		
		
		/********** END MOCKS ADDING **********/
		
		mockDisplayNames = "\nList of mock(s) :\n";		
		mocksSize = mocks.size();
		initMockDisplayNames();
	}
	
	public void run() {		
		Scanner sc = new Scanner(System.in);
    	String choice = "";
    	boolean wantToQuit = false;
    	while(!wantToQuit) {
    		System.out.println(mockDisplayNames);	
    		System.out.print("Enter your the index of the mock you want : ");
    		choice = sc.nextLine();
    		wantToQuit = (choice != null && choice.equalsIgnoreCase("q"));
    		if(!wantToQuit) {
    			int mockIndex = NumberUtils.toInt(choice, -9);
    			if(mockIndex == -9 || mockIndex < 0 || mockIndex >= mocksSize) {
    				System.out.println("/!\\ The entered index is invalid /!\\");
    			} else {
    				mocks.get(mockIndex).start();
    			}    			
    		}
    	}
    	sc.close();
	}
	
	public void initMockDisplayNames() {		
		for(int index = 0; index < mocksSize; index++) {
			mockDisplayNames += index + ". " +  mocks.get(index).getMockName() + "\n";
		}
		mockDisplayNames += "Enter the key 'q' to quit";
	}

}
