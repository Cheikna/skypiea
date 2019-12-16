package com.skytech.skypiea.injector;

import com.skytech.skypiea.commons.util.FileReader;

public class SkypieaInjectorApplication 
{
    public static void main( String[] args )
    {    	
    	System.out.println(FileReader.getASCII("injector-title.txt"));
    	Console console = new Console();
    	console.run();
    	System.out.println(FileReader.getASCII("goodbye.txt"));
    }
}
