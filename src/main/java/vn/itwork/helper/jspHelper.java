package vn.itwork.helper;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.commons.beanutils.BeanUtils;
import org.ocpsoft.prettytime.PrettyTime;

import vn.itwork.entity.Itemactivity;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;




public class jspHelper {
	public static String time_ago(Date time) throws ParseException{
		if(time.equals(null)){
			return "not set";
		}
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//Date date = format.parse(time);
		PrettyTime p = new PrettyTime();
		return p.format(time);
	
	}
	public static String time_ago(String time) throws ParseException{
		if(time.equals(null)){
			return "not set";
		}
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = format.parse(time);
		PrettyTime p = new PrettyTime();
		return p.format(date);
	
	}
	public static String vietnamdate(Date time) throws ParseException{
		  // *** note that it's "yyyy-MM-dd hh:mm:ss" not "yyyy-mm-dd hh:mm:ss"  
    /*  SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
      Date date = dt.parse(time);*/

      // *** same for the format String below
      SimpleDateFormat dt1 = new SimpleDateFormat("dd/MM/yyyy");
      return (dt1.format(time));
	}
	public static String vietnamdate(String time) throws ParseException{
		  // *** note that it's "yyyy-MM-dd hh:mm:ss" not "yyyy-mm-dd hh:mm:ss"  
        SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date date = dt.parse(time);

        // *** same for the format String below
        SimpleDateFormat dt1 = new SimpleDateFormat("dd/MM/yyyy");
        return (dt1.format(date));
	}
	public static String get_currentVNdate(){
		Date date=new Date();
		SimpleDateFormat dt1 = new SimpleDateFormat("dd/MM/yyyy");
	    return (dt1.format(date));
	}
	public static String mysqldate(String time) throws ParseException{
		  // *** note that it's "yyyy-MM-dd hh:mm:ss" not "yyyy-mm-dd hh:mm:ss"  
      SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
      Date date = dt.parse(time);

      // *** same for the format String below
      SimpleDateFormat dt1 = new SimpleDateFormat("yyyy-MM-dd");
      return (dt1.format(date));
	}
	public static String compare_finishdate(String startdate,String finishdate) throws ParseException{
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date1 = format.parse(startdate);
		Date date2= format.parse(finishdate);
		if(date2.compareTo(date1)>0){
			return date_style_us(finishdate);
		}
		return "-";
		
	}
	public static String short_subject(String subject){
		if(subject.length()>64){
			return subject.substring(0, 60)+" ...";
		}
		return subject;
	}
	
	public static String star_readmail(int isread){
		if(isread == 0){
		
			return  "<i class='fa fa-star-o text-yellow'></i>";
		}
		
			return  "<i class='fa fa-star text-yellow'></i>";
	}
	public static String From_to(int status){
		if(status==1){
			return "From";
		}
		return "To";
	}
	public static String date_style_us(String time) throws ParseException{
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = format.parse(time);
		int style= DateFormat.DEFAULT;
		  String result;
		  DateFormat formatter;
		   formatter = DateFormat.getDateTimeInstance(style,style, new Locale("en", "US"));
		   result = formatter.format(date);
		return result;
	}
	
	public static  void showDateStyles(Locale currentLocale) {

	    Date today = new Date();
	    String result;
	    DateFormat formatter;

	    int[] styles = { DateFormat.DEFAULT, DateFormat.SHORT, DateFormat.MEDIUM,
	        DateFormat.LONG, DateFormat.FULL };

	    System.out.println();
	    System.out.println("Locale: " + currentLocale.toString());
	    System.out.println();

	    for (int k = 0; k < styles.length; k++) {
	      formatter = DateFormat.getDateInstance(styles[k], currentLocale);
	      result = formatter.format(today);
	      System.out.println(result);
	    }
	  }
	public static String order_status (int status){
		String active="<span class='label label-success'>Finish</span>";
		if(status==-1){
			active="<span class='label label-danger'>Cancel</span>";
		}else  if(status==0)
		{
			active="<span class='label label-primary'>New</span>";
		}else  if(status==1)
		{
			active="<span class='label label-warning'>Processing</span>";
		}
		return active;
	}
	public static String slide_status(int status){
		String active="<span class='label label-success'>Active</span>";
		if(status==0){
			active="<span class='label label-danger'>Disabled</span>";
		}
		return active;
	}
	public static String req_status(int status){
		String active="<span class='label label-success'>Completed</span>";
		if(status==0){
			active="<span class='label label-warning'>Pending</span>";
		}
		if(status==-1){
			active="<span class='label label-danger'>Cancel</span>";
		}
		return active;
	}
	public static String design_status(int status){
		String active="<span class='label label-success'>Completed</span>";
		if(status==0){
			active="<span class='label label-warning'>Pending</span>";
		}
		if(status==-1){
			active="<span class='label label-danger'>Cancel</span>";
		}
		return active;
	}
	public static String design_show_date(int status,String time) throws ParseException{
		if(status==-1 || status==1){
			return date_style_us(time);
		}
		return "-";
	}
	public static String req_short_show_date(int status,String time) throws ParseException{
		if(status==-1 || status==1){
			return vietnamdate(time);
		}
		return "-";
	}
	public static String href_edit_user(String username,String user_role){
		String href="";
		if(user_role.equals("ROLE_PRO")){
			href= "admin/user/edit/provider/"+username;
		}
		if(user_role.equals("ROLE_USER")){
			href= "admin/user/edit/client/"+username;
		}
		return href;
	}
	
	public static String border_image_profile(String user,String current_user){
		if(user.equals(current_user)){
			return "offline";
		}
		return "online";
		
	}
	public static String set_checked_progress(int value){
		if(value==1){
			return "checked";
		}
		return "";
	}
	
	public static String get_val_bylang(Object ob,String lang,String base_attr){
		// access individual properties
		String val="";
		try {
			if(lang.equals("en")){
				 val =  BeanUtils.getProperty(ob,base_attr);
			}
			else{
				 val =  BeanUtils.getProperty(ob,base_attr+"_"+lang);
			}
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println(val);
		return val;
		
	}
	public static String convert_timetoH(int totaltime){
		int h=  (int) Math.ceil(totaltime / 60);
		int m= (totaltime% 60);
		return h+"H "+m+"m";
	}
	public static String toJson(Object value) throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		  return mapper.writeValueAsString(value);
	}
	public static List<Itemactivity> fromJsonlog(String jsonInput) throws JsonGenerationException, JsonMappingException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		List<Itemactivity> a=mapper.readValue(jsonInput,new TypeReference<List<Itemactivity>>() { });
		return a;
	}
	
}
