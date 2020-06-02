package scheduler;

import org.quartz.SchedulerException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import exchange.init.ApplicationContextHelper;

@Controller
public class JobTaskController {


	@PostMapping(value = "/updateJob")
	public void updateJobCron(@RequestParam("jobNo") Integer jobNo,
			@RequestParam("cronExpression") String cronExpression) {
		try {
			JobTaskService jobService = ApplicationContextHelper.getBean(JobTaskService.class);
			jobService.updateJobCron(jobNo, cronExpression);
		} catch (SchedulerException e) {
			e.printStackTrace();
		}
	}
}
