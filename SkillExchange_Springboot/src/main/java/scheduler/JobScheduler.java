package scheduler;

import java.util.ArrayList;
import java.util.List;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.TriggerBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.stereotype.Component;

import exchange.init.ApplicationContextHelper;
import scheduler.model.JobParam;
import scheduler.model.dao.JobParamDao;

@Component
public class JobScheduler {
	
	@Autowired
	AbstractApplicationContext context;

	@EventListener(ContextRefreshedEvent.class)
	public void jobScheduler() throws SchedulerException {
		List<JobParam> list = new ArrayList<JobParam>();
		JobParamDao dao = ApplicationContextHelper.getBean(JobParamDao.class);
		JobParam jobParam = ApplicationContextHelper.getBean(JobParam.class);
		List<JobParam> paramList = dao.getJobParam();
		
		try {
			Scheduler scheduler = (Scheduler) context.getBean("scheduler");
			// ### 建立並啟動job ###
			for (JobParam param : paramList) {
				// 構建job資訊
				JobDetail jobDetail = JobBuilder.newJob(SendActivityMailJob.class)
						.withIdentity(param.getJobName(), param.getJobGroup()).build();
				// 表示式排程構建器
				CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(param.getCronExpression());
				// 按cronExpression表示式構建trigger
				CronTrigger trigger = TriggerBuilder.newTrigger().withIdentity(param.getJobName(), param.getJobGroup())
						.withSchedule(scheduleBuilder).build();
				// 放入引數，執行時的方法可以獲取
				jobDetail.getJobDataMap().put("jobParam", param);
				scheduler.start();
				scheduler.scheduleJob(jobDetail, trigger);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
