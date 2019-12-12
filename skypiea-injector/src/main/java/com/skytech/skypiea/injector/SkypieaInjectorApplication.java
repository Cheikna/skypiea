package com.skytech.skypiea.injector;

import java.util.Arrays;
import java.util.List;

import com.skytech.skypiea.commons.util.PasswordUtil;

public class SkypieaInjectorApplication 
{
    public static void main( String[] args )
    {
    	List<String> passwords = Arrays.asList("leo", "gerard", "fabrice", "solange", "catherine", "angele", "admin");
    	passwords.forEach(password -> System.out.println(password + " ====> :" + PasswordUtil.encode(password)));
    }
}
