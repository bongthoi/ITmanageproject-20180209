package vn.itwork.helper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import vn.itwork.entity.ReportModel;

public class ExtraHelpper {

	public static int cacl_sum_minute (int h,int m){
		return (h*60)+m;
	}
	
	public static String convert_timetoH(int totaltime){
		int h=  (int) Math.ceil(totaltime / 60);
		int m= (totaltime% 60);
		return h+"H "+m+"m";
	}
	public static Map<String, List<ReportModel>> group_project_id(  List<ReportModel> all){
		Map<String, List<ReportModel>> map = new HashMap<String, List<ReportModel>>();
		for (ReportModel a : all) {
		   String key = a.getProject_id();
		   if (map.get(key) == null) {
		      map.put(key, new ArrayList<ReportModel>());
		   }
		   map.get(key).add(a);
		}
		return map;
	}
	
	public static Map<String, List<ReportModel>> group_pepole( List<ReportModel> all){
		Map<String, List<ReportModel>> map = new HashMap<String, List<ReportModel>>();
		for (ReportModel a : all) {
		   String key = a.getEmployee_id();
		   if (map.get(key) == null) {
		      map.put(key, new ArrayList<ReportModel>());
		   }
		   map.get(key).add(a);
		}
		return map;
	}
}
