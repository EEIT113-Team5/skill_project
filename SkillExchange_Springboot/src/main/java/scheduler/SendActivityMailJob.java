package scheduler;

import java.util.List;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.stereotype.Component;

import activity.bean.ActivityBean;
import activity.service.ActivityService;
import exchange.init.ApplicationContextHelper;

@Component
public class SendActivityMailJob implements Job {

	StringBuffer result;

	@Override
	public void execute(JobExecutionContext jobContext) throws JobExecutionException {
		try {
			ActivityService aService = ApplicationContextHelper.getBean(ActivityService.class);
			List<ActivityBean> aBean = aService.getAllActivityYesterday();
			if (aBean.size() > 0) {
				for (ActivityBean bean : aBean) {
					result.append(bean.toString());
				}
			} else {
				System.out.println("no data");
			}
			System.out.println(result);
			System.out.println("====send email====");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
