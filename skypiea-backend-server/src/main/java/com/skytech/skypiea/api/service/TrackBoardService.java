package com.skytech.skypiea.api.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

//import com.skytech.skypiea.api.repository.TrackBoardRepository;
import com.skytech.skypiea.commons.entity.TrackBoard;

public class TrackBoardService {
	
	/*@Autowired
	private TrackBoardRepository trackBoardRepository;
	
	public List<TrackBoard> findAll(){
		List<TrackBoard> boards = this.trackBoardRepository.findAll();
		return boards;
	}
	
	public TrackBoard createOrUpdate(TrackBoard board) {
		return trackBoardRepository.save(board);
	}
	
	public boolean delete(Long id) {
		trackBoardRepository.deleteById(id);
		// if every thing went well
		return true;
	}
	
	public TrackBoard findById(Long id) {
		TrackBoard board = null;
		if(id >= 1) {			
			try {
				Optional<TrackBoard> optionalBoard = trackBoardRepository.findById(id);
				board = optionalBoard.get();				
			} catch(Exception e) {
				e.printStackTrace();
			}
			
		}
		return board;
	}*/
}
