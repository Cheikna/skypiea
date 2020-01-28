package com.skytech.skypiea.commons.util;

import static org.junit.Assert.assertEquals;

import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Consumer;

import org.junit.Test;

public class FileReaderTest {

	@Test
	public void testReadLine() {
		String textFromFile1 = "read-from-file-1";
		AtomicReference<String> read = new AtomicReference<>();
		Consumer<String> consumer = (str) -> {
			read.set(str);
		};
		FileReader.readLine("mocks/test1.txt", consumer);
		assertEquals(textFromFile1, read.get());
	}

}
