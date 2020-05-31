package scheduler;

import org.quartz.CronScheduleBuilder;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.impl.StdSchedulerFactory;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class JobScheduler {
	
	@EventListener(ContextRefreshedEvent.class)
	public void jobScheduler() throws SchedulerException {
		
		JobDetail job = JobBuilder.newJob(SendActivityMailJob.class)
				.withIdentity("send-activity-mail").build();
		
//		每天上午10點觸發
		Trigger trigger = TriggerBuilder.newTrigger()
				.withIdentity("myTrigger")
//				.withSchedule(CronScheduleBuilder.cronSchedule("0/5 * * * * ?"))
				.withSchedule(CronScheduleBuilder.cronSchedule("0 29 22 * * ?"))
				.build();
		
		Scheduler scheduler = StdSchedulerFactory.getDefaultScheduler();
		scheduler.start();
		scheduler.scheduleJob(job,trigger);
	}
}
