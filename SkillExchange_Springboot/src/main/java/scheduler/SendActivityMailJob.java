package scheduler;

import java.util.Date;
import java.util.List;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.stereotype.Component;

import activity.bean.ActivityBean;
import contactUs.service.MailContent;
import exchange.init.ApplicationContextHelper;
import scheduler.model.JobParam;
import sendmail.SendMail;
import sendmail.model.ActivityMailDao;

@Component
public class SendActivityMailJob implements Job {

	@Override
	public void execute(JobExecutionContext jobContext) throws JobExecutionException {
		JobParam jobParam = (JobParam) jobContext.getJobDetail().getJobDataMap().get(JobParam.JOB_PARAM);
		if (jobParam != null) {
			try {
				SendMail mail = ApplicationContextHelper.getBean(SendMail.class);
				MailContent content = ApplicationContextHelper.getBean(MailContent.class);
				ActivityMailDao dao = ApplicationContextHelper.getBean(ActivityMailDao.class);
				List<ActivityBean> aBean = dao.getAllActivityYesterday();
				content.setActivityBeans(aBean);
				if (aBean.size() > 0) {
					for (ActivityBean bean : aBean) {
						String mailString = dao.getAllMembersEmail();
						String mailContent = content.getActivityMail();

						mail.setHideEmail(mailString);
						mail.setSubject("新活動通知~趕快來參加！");
						mail.setMailContent(mailContent);
						mail.sendMail();
						System.out.println("====send email success====");

					}
				} else {
					System.out.println("no data "+new Date());
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else {
			System.out.println("Hey, can't find job parameter ...");
		}
	}
}
