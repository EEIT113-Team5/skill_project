package scheduler;

import org.quartz.SchedulerException;

public interface JobTaskService {
	public void updateJobCron(Integer jobNo, String cronExpression) throws SchedulerException;

}