package com.skytech.skypiea.commons.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.function.Consumer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FileReader {
	
	private static Logger log = LoggerFactory.getLogger(FileReader.class);
	
	private static String currentDirectory = System.getProperty("user.dir");
	private static String fileSeparator = System.getProperty("file.separator");
	
	public static String getASCII(String name)
	{
		String ascii = "";

		try 
		{
			InputStream inputStream = FileReader.class.getClassLoader().getResourceAsStream("ascii/" + name);
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
			
			//Only the first line contains names
			String line = null;
			while((line = bufferedReader.readLine()) != null)
			{
				ascii += line + "\n";				
			}
			
			inputStream.close();
		} 
		catch (Exception e) 
		{
			log.error("Error when getting the ASCII of '" + name + "'");
		}
		return ascii;
	}
	
	/**
	 * 
	 * @param filePath
	 * @param consumerToApplyOnLine : consumer to apply on each line of the file
	 * @param isSystemFile
	 * 	@true if the file is provided by the user on the system
	 * 	@false if the file is compiled with the jar
	 */
	public static void readLine(String filePath, Consumer<String> consumerToApplyOnLine, boolean isSystemFile)
	{
		System.out.println(currentDirectory);
		try 
		{
			InputStream inputStream = null;
			if(!isSystemFile) {
				inputStream = FileReader.class.getClassLoader().getResourceAsStream(filePath);
			} else {
				File file = new File(currentDirectory + fileSeparator + filePath);
				log.info(currentDirectory + fileSeparator + filePath);
				inputStream = new FileInputStream(file);
				
			}
			BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
			
			//Only the first line contains names
			String line = null;
			while((line = bufferedReader.readLine()) != null)
			{
				consumerToApplyOnLine.accept(line);			
			}
			
			inputStream.close();
		} 
		catch (Exception e) 
		{
			log.error("Error when getting the file '" + filePath + "'");
		}
	}
}
