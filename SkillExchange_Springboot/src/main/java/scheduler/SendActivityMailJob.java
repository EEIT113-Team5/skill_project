package scheduler;

import java.util.List;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import activity.bean.ActivityBean;
import activity.service.ActivityService;

@Component
public class SendActivityMailJob implements Job{
	@Autowired
	ActivityService service;
	StringBuffer result;

	
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException {
		List<ActivityBean> aBean = service.getAllActivityYesterday();
		for(ActivityBean bean:aBean) {
			result.append(bean.toString());
		}
		System.out.println(result);
		System.out.println("====send email====");
	}

}
