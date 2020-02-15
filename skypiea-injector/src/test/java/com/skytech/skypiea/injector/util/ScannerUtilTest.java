package com.skytech.skypiea.injector.util;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.io.ByteArrayInputStream;
import java.util.Scanner;
import java.util.function.Predicate;

import org.junit.After;
import org.junit.Test;

public class ScannerUtilTest {
	
	private Scanner sc;
	private Predicate<String> stringSizePredicate = (str) -> {
		return str != null && str.length() >= 3;
	};
	
	@After
	public void close() {
		if(sc != null) {
			sc.close();
		}
	}
	
	@Test
	public void testAskForStringPredicateFirstNotValidated() {
		String correct = "cotrdc";
		String[] inputs = {"te", "co", correct };
		setScannerInputs(inputs);
		assertEquals(correct, ScannerUtil.askForString(sc, "question", stringSizePredicate));
	}
	
	@Test
	public void testAskForStringPredicateValidated() {
		String answer = "testTEST";
		String[] inputs = {answer};
		setScannerInputs(inputs);
		assertEquals(answer, ScannerUtil.askForString(sc, "question", stringSizePredicate));
	}
	
	@Test
	public void testIsNumberPredicate() {
		assertTrue(ScannerUtil.isNumber.test("5"));
		assertTrue(ScannerUtil.isNumber.test("39"));
		assertFalse(ScannerUtil.isNumber.test("3f9"));
	}

	@Test
	public void testWantToQuit() {
		assertTrue(ScannerUtil.wantToQuit("q"));
		assertTrue(ScannerUtil.wantToQuit("Q"));
		assertFalse(ScannerUtil.wantToQuit("Qe"));
		assertFalse(ScannerUtil.wantToQuit("qQ"));
	}
	
	private void setScannerInputs(String[] inputsArray) {
		String newInput = System.getProperty("line.separator");
		String inputs = String.join(newInput, inputsArray);
		System.setIn(new ByteArrayInputStream(inputs.getBytes()));
		sc = new Scanner(System.in);
	}

}
