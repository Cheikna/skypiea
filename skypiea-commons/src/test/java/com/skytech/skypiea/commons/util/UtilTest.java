package com.skytech.skypiea.commons.util;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.State;

public class UtilTest {

	@Test
	public void testGetNonMedicalObjectWithHighestState() {
		NonMedicalConnectedObject nco1 = new NonMedicalConnectedObject();
		nco1.setState(State.OPERATIONAL);
		nco1.setSvgPoint("1");
		NonMedicalConnectedObject nco2 = new NonMedicalConnectedObject();
		nco2.setState(State.DANGER);
		nco2.setSvgPoint("2");
		NonMedicalConnectedObject nco3 = new NonMedicalConnectedObject();
		nco3.setState(State.IN_REPAIR);
		nco3.setSvgPoint("3");
		NonMedicalConnectedObject nco4 = new NonMedicalConnectedObject();
		nco4.setState(State.OPERATIONAL);
		nco4.setSvgPoint("4");
		NonMedicalConnectedObject nco5 = new NonMedicalConnectedObject();
		nco5.setState(State.BROKEN);
		nco5.setSvgPoint("5");
		NonMedicalConnectedObject nco6 = new NonMedicalConnectedObject();
		nco6.setState(State.WARNING);
		nco6.setSvgPoint("6");
		NonMedicalConnectedObject nco7 = new NonMedicalConnectedObject();
		nco7.setState(State.OPERATIONAL);
		nco7.setSvgPoint("7");
		NonMedicalConnectedObject nco8 = new NonMedicalConnectedObject();
		nco8.setState(State.BROKEN);
		nco8.setSvgPoint("8");
		NonMedicalConnectedObject nco9 = new NonMedicalConnectedObject();
		nco9.setState(State.DANGER);
		nco9.setSvgPoint("9");
		NonMedicalConnectedObject nco10 = new NonMedicalConnectedObject();
		nco10.setState(State.WARNING);
		nco10.setSvgPoint("10");
		
		
		List<NonMedicalConnectedObject> objects = new ArrayList<NonMedicalConnectedObject>();
		objects.add(nco1);
		objects.add(nco2);
		objects.add(nco3);
		objects.add(nco4);
		objects.add(nco5);
		objects.add(nco6);
		objects.add(nco7);
		objects.add(nco8);
		objects.add(nco9);
		objects.add(nco10);
		
		NonMedicalConnectedObject highest = (NonMedicalConnectedObject)Util.getObjectWithHighestState(objects); 
		assertEquals(nco5, highest);				
	}
	
	@Test
	public void testGetNonMedicalObjectWithHighestStateWithOneElement() {
		NonMedicalConnectedObject nco1 = new NonMedicalConnectedObject();
		nco1.setState(State.OPERATIONAL);
		nco1.setSvgPoint("1");		
		
		List<NonMedicalConnectedObject> objects = new ArrayList<NonMedicalConnectedObject>();
		objects.add(nco1);
		
		NonMedicalConnectedObject highest = (NonMedicalConnectedObject)Util.getObjectWithHighestState(objects); 
		assertEquals(nco1, highest);				
	}
	
	@Test
	public void testGetNonMedicalObjectWithHighestStateEmptyList() {		
		List<NonMedicalConnectedObject> objects = new ArrayList<NonMedicalConnectedObject>();	
		NonMedicalConnectedObject highest = (NonMedicalConnectedObject)Util.getObjectWithHighestState(objects); 
		assertEquals(null, highest);				
	}
	
	@Test
	public void testGetNonMedicalObjectWithHighestStateNullList() {
		NonMedicalConnectedObject highest = (NonMedicalConnectedObject)Util.getObjectWithHighestState(null); 
		assertEquals(null, highest);				
	}

}
