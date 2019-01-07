package vn.itwork.service;

import java.util.List;

import vn.itwork.entity.ItemStatus;



public interface HelperService {
	
	List<ItemStatus> get_status_from_table(String table_name);
}
