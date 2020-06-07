package scheduler;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.TriggerBuilder;
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
	public void updateJobCron(Integer jobNo, String cronExpression,String status,String jobGroup,String jobName) throws SchedulerException {
		try {
			Scheduler scheduler = (Scheduler) context.getBean("scheduler");
			jobParam = jobDao.getJobParamByNo(jobNo);
			TriggerKey triggerKey = TriggerKey.triggerKey(jobParam.getJobName(), jobParam.getJobGroup());
			CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);
			CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(cronExpression);
			trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();
			if(Integer.valueOf(status)==0) {
				JobKey jobKey = JobKey.jobKey(jobParam.getJobName(), jobParam.getJobGroup()); 
				scheduler.deleteJob(jobKey);
				System.out.println("====deleteJob success====");
			}else {
			scheduler.rescheduleJob(triggerKey, trigger);
			System.out.println("===rescheduleJob success====");
			}
			jobDao.updateJobParam(cronExpression, jobNo,status,jobGroup,jobName);
			System.out.println("===update jobParam success====");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<JobParam> getJobParam() throws ParseException {
		List<JobParam> jobParamList = jobDao.getJobParam();
		for(JobParam job : jobParamList) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			job.setUpdateTimeStr(sdf.format(job.getUpdateTime()));
			
			String cronStr = job.getCronExpression();
			String transCron = CronExpParser.translateToChinese(cronStr);
			job.setCronExpression(transCron);
			
			String status = job.getStatus();
			if(Integer.parseInt(status)==1) {
				job.setStatus("啟動");
			}else if(Integer.parseInt(status) ==0) {
				job.setStatus("關閉");
			}
		}
		return jobParamList;
	}

	@Override
	public List<JobParam> getInActiveJobParam() {
		return jobDao.getInActiveJobParam();
	}

	@Override
	public boolean insertJobParam(JobParam jobParam) {
		boolean result = false;
		try {
			Scheduler scheduler = (Scheduler) context.getBean("scheduler");
			JobDetail jobDetail = JobBuilder.newJob(SendActivityMailJob.class)
					.withIdentity(jobParam.getJobName(), jobParam.getJobGroup()).build();
			CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(jobParam.getCronExpression());
			CronTrigger trigger = TriggerBuilder.newTrigger().withIdentity(jobParam.getJobName(), jobParam.getJobGroup()).withSchedule(scheduleBuilder).build();
			jobDetail.getJobDataMap().put("jobParam", jobParam);
			scheduler.scheduleJob(jobDetail, trigger);
			System.out.println("===create scheduleJob success====");
			
			result =jobDao.insertJobParam(jobParam);
			System.out.println("===insert jobParam success====");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public void deleteJobParam(Integer jobNo) {
		try {
			Scheduler scheduler = (Scheduler) context.getBean("scheduler");
			jobParam = jobDao.getJobParamByNo(jobNo);
			JobKey jobKey = JobKey.jobKey(jobParam.getJobName(), jobParam.getJobGroup()); 
			scheduler.deleteJob(jobKey);
			System.out.println("====deleteJob success====");
			jobDao.deleteJobParam(jobNo);
			System.out.println("===delete jobParam success====");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
