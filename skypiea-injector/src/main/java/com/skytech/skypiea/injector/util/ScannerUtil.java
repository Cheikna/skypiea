package com.skytech.skypiea.injector.util;

import java.util.Scanner;
import java.util.function.Predicate;

import org.apache.commons.lang3.math.NumberUtils;
import org.apache.commons.validator.GenericValidator;

public class ScannerUtil {

	//private static Logger log = LoggerFactory.getLogger(ScannerUtil.class);

	/**
	 * Ask a question to the user and wait for his answer by 
	 * looping until the answer is not empty and the predicate is not valid
	 * @param sc : the scanner to read the user answer
	 * @param question : the indication to display to the user
	 * @param predicate : the predicate to check on the user answer
	 * @param defaultValue : the default value if the scanner read nothing or an empty string
	 * @return
	 */
	public static String askForString(Scanner sc, String question, Predicate<String> predicate, String defaultValue) {
		boolean isAnswerCorrect = true;
		String answer = null;
		do {
			// Display the question to the user
			System.out.print(question);
			
			// Wait for a user input and the enter key
			answer = sc.nextLine();
			
			// Check if the entered answered is not empty and not null
			if(GenericValidator.isBlankOrNull(answer)) {
				answer = defaultValue;
			}

			// Check if the entered answer is accepted by the predicate
			if(predicate != null) {
				isAnswerCorrect = predicate.test(answer);
			}

			if(!isAnswerCorrect) {
				System.out.println("/!\\ The answer is incorrect /!\\");
			}
		} while(!isAnswerCorrect);
		
		return answer;		
	}
	
	public static String askForString(Scanner sc, String question, Predicate<String> predicate) {
		return askForString(sc, question, predicate, "default");
	}
	
	public static Predicate<String> isNumber = (str) -> {
		return NumberUtils.isCreatable(str);
	};

	/**
	 * Check if the user want to quit the current displayed menu
	 * @param str : the string entered by the user
	 * @return
	 *  true if the user pressed 'q' (ignore case)
	 *  false otherwise 
	 */
	public static boolean wantToQuit(String str) {
		return str.equalsIgnoreCase("q");
	}

}
