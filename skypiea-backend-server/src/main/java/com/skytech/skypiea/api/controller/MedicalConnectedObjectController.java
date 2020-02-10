package com.skytech.skypiea.api.controller;

import com.skytech.skypiea.api.service.MedicalConnectedObjectService;
import com.skytech.skypiea.commons.entity.HealthControlHistory;
import com.skytech.skypiea.commons.entity.MedicalConnectedObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/medical-connected-objects")
@CrossOrigin(origins="*", allowedHeaders="*")
public class MedicalConnectedObjectController {

    @Autowired
    private MedicalConnectedObjectService medicalConnectedObjectService;

    @GetMapping("")
    public List<MedicalConnectedObject> getMedicalConnectedObject() {
        return medicalConnectedObjectService.findAll();
    }

    @PostMapping("/save/{ipAddress}")
    public MedicalConnectedObject saveHistory(@PathVariable String ipAddress, HealthControlHistory healthControlHistory){
        return this.medicalConnectedObjectService.saveHistory(ipAddress,healthControlHistory);
    }

}
