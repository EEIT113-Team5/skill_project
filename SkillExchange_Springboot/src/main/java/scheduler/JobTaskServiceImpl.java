package scheduler;

import java.text.SimpleDateFormat;
import java.util.List;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.TriggerKey;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.stereotype.Service;

import scheduler.model.JobParam;
import scheduler.model.dao.JobParamDao;

@Service
public class JobTaskServiceImpl implements JobTaskService {
	@Autowired
	AbstractApplicationContext context;

	@Autowired
	JobParamDao jobDao;
	@Autowired
	JobParam jobParam;

	@Override
	public void updateJobCron(Integer jobNo, String cronExpression) throws SchedulerException {
		try {
			Scheduler scheduler = (Scheduler) context.getBean("scheduler");
			jobParam = jobDao.getJobParamByNo(jobNo);
			TriggerKey triggerKey = TriggerKey.triggerKey(jobParam.getJobName(), jobParam.getJobGroup());
			CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);
			CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(cronExpression);
			trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();
			scheduler.rescheduleJob(triggerKey, trigger);
			System.out.println("===rescheduleJob success====");
			jobDao.updateJobParam(cronExpression, jobNo);
			System.out.println("===update jobParam success====");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<JobParam> getJobParam() {
		return jobDao.getJobParam();
	}
}
