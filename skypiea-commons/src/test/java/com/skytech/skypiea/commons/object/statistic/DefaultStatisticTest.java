package com.skytech.skypiea.commons.object.statistic;

import static org.junit.Assert.assertEquals;

import java.util.HashSet;
import java.util.Set;

import org.junit.Test;

import com.skytech.skypiea.commons.entity.HistoryEvent;
import com.skytech.skypiea.commons.enumeration.State;

public class DefaultStatisticTest {

	@Test
	public void testHistoryEventsStatistics() {
		/**
		 * Given
		 */
		HistoryEvent h1 = new HistoryEvent();
		h1.setId(1L);
		h1.setReachedState(State.DANGER);
		HistoryEvent h2 = new HistoryEvent();
		h2.setId(2L);
		h2.setReachedState(State.WARNING);
		HistoryEvent h3 = new HistoryEvent();
		h3.setId(3L);
		h3.setReachedState(State.DANGER);
		HistoryEvent h4 = new HistoryEvent();
		h4.setId(4L);
		h4.setReachedState(State.DANGER);
		HistoryEvent h5 = new HistoryEvent();
		h5.setId(5L);
		h5.setReachedState(State.BROKEN);
		HistoryEvent h6 = new HistoryEvent();
		h6.setId(6L);
		h6.setReachedState(State.BROKEN);
		Set<HistoryEvent> events = new HashSet<HistoryEvent>();
		events.add(h1);
		events.add(h2);
		events.add(h3);
		events.add(h4);
		events.add(h5);
		events.add(h6);
		DefaultStatistic stat = new DefaultStatistic(null, events);
		Long danger = 3L;
		Long warning = 1L;
		Long broken = 2L;
		
		/**
		 * When
		 */
		stat.initStatistics();
		
		/**
		 * Then
		 */
		assertEquals(danger, stat.getTotalChangesOnEachState().get((State.DANGER)));
		assertEquals(warning, stat.getTotalChangesOnEachState().get((State.WARNING)));
		assertEquals(broken, stat.getTotalChangesOnEachState().get((State.BROKEN)));
		
	}

}
