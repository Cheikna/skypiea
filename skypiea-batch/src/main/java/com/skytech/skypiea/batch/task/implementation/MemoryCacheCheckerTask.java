package com.skytech.skypiea.batch.task.implementation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skytech.skypiea.api.service.NonMedicalConnectedObjectService;
import com.skytech.skypiea.batch.cache.CacheFactory;
import com.skytech.skypiea.batch.task.abstracts.CheckerTask;
import com.skytech.skypiea.commons.entity.NonMedicalConnectedObject;
import com.skytech.skypiea.commons.enumeration.Parameter;

@Service
public class MemoryCacheCheckerTask extends CheckerTask {

	//private static Logger log = LoggerFactory.getLogger(MemoryCacheCheckerTask.class);

	@Autowired
	private NonMedicalConnectedObjectService nonMedicalConnectedObjectService;
	
	/**
	 * First method of the class which will be called automatically 
	 * because this class inherited indirectly from TimerTask
	 */
	@Override
	public void run() {
		super.run(Parameter.IS_MEMORY_CACHE_ACTIVE, Parameter.LAST_MEMORY_CACHE_UPDATE);
	}
	
	protected void runJob() {
		List<NonMedicalConnectedObject> objects = nonMedicalConnectedObjectService.findAll();
		CacheFactory.getMemoryCache().setNonMedicalConnectedObjects(objects);
	}
}
