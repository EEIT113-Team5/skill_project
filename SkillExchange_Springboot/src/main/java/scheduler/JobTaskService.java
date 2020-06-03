package scheduler;

import java.text.ParseException;
import java.util.List;

import org.quartz.SchedulerException;

import scheduler.model.JobParam;

public interface JobTaskService {
	public void updateJobCron(Integer jobNo, String cronExpression) throws SchedulerException;
	List<JobParam> getJobParam() throws ParseException;
}