package com.skytech.skypiea.api.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/electronictag")
@CrossOrigin(origins="*", allowedHeaders="*")
public class ElectronicTagController {
	
	/*@Autowired
	private ElectronicTagService electronicTagService;
	
	@GetMapping("")
	public List<ElectronicTag> getElectronicTags() {
		return electronicTagService.findAll();
	}
	
	@PostMapping("")
	public ElectronicTag createETag(@RequestBody ElectronicTag eTag){
		return electronicTagService.createOrUpdate(eTag);
	}
	
	@DeleteMapping("/{id}")
	public boolean deleteETag(@PathVariable Long id){
		return electronicTagService.delete(id);
	}
	
	@GetMapping("/{id}")
	public ElectronicTag getById(@PathVariable Long id) {
		return electronicTagService.findById(id);
	}*/
	
	

}

