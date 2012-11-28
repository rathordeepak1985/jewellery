package com.defysope.dao;

import java.util.List;
import java.util.Map;

import com.defysope.modal.CustomerType;

public interface CustomerTypeSettingsDao {
	
	List<Map<String, Object>> getCType();
	
	CustomerType saveCtype(CustomerType type);
	
	void removeCType(int id);

}