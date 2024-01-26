package com.green.teamproject_groupware.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.green.teamproject_groupware.dto.RequestDto;

public interface SupplyService {
	public ArrayList<RequestDto> supply_list();
	public void write(HashMap<String, String> param);
	public RequestDto contentView(HashMap<String, String> param);
	public void modify(HashMap<String, String> param);
	public void delete(HashMap<String, String> param);
}
