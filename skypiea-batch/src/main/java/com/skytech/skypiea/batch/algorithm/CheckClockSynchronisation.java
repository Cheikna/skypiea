package com.skytech.skypiea.batch.algorithm;

import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;

import com.skytech.skypiea.commons.entity.AlarmClock;

public class CheckClockSynchronisation {
	
	public static void main(String[] args) throws InterruptedException {
		
		Calendar calendar=Calendar.getInstance();
		Date currentDate=calendar.getTime();
		
		
		Timestamp currentTimestamp = new Timestamp(currentDate.getTime());
		//currentTimestamp.set(Calendar.MILLISECOND, 0);
		
		
		AlarmClock c =new AlarmClock();
		
		Date date=calendar.getTime();
		Timestamp timestamp = new Timestamp(date.getTime());
		calendar.set(Calendar.HOUR_OF_DAY, 9);
		calendar.set(Calendar.MILLISECOND, 0);
		
		
		c.setTimestamp(timestamp);
		
		System.out.println(timestamp);
		
		while(true) {
			
		String s1 = "A"; 
        String s2 = "B";
        
        if (currentTimestamp.equals(c.getTimestamp())) {
        	System.out.println("Le reveil est a l'heure");
        	Thread.sleep(1000);
        }
        else {
        	System.out.println("Cheh !");
        	Thread.sleep(1000);
        }
	}
	}

}
