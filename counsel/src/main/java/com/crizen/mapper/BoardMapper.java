package com.crizen.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crizen.domain.Counsel;

@Repository
public interface BoardMapper {
	
	List<Counsel> list();
	
}
