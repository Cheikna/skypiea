package com.skytech.skypiea.commons.util;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.function.Consumer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FileReader {
	
	private static Logger log = LoggerFactory.getLogger(FileReader.class);
	
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
	
	public static void readLine(String filePath, Consumer<String> consumerToApplyOnLine)
	{
		try 
		{
			InputStream inputStream = FileReader.class.getClassLoader().getResourceAsStream(filePath);
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
