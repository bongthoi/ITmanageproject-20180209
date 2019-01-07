package it.work.Scheduled;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import vn.itwork.service.ProjectService;

@Component
public class JobSchedule {
	@Autowired
	@Qualifier("ProjectServiceImpl")
	private ProjectService ProjectServiceImpl;
	
	  private static final Logger log = LoggerFactory.getLogger(JobSchedule.class);

	    private static final SimpleDateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
	    
	    @Scheduled(cron="0 0 * * * *")
	    public void reportCurrentTime() {
	        log.info("The time is now {}", dateFormat.format(new Date()));
	        System.out.println("------begin exceute ProjectServiceImpl dailyUpdate-----");
	        ProjectServiceImpl.dailyUpdate();
	        System.out.println("------end exceute ProjectServiceImpl dailyUpdate-----");

	    }
	
}
