package scheduler;

import java.util.List;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.stereotype.Component;

import activity.bean.ActivityBean;
import activity.service.ActivityService;
import contactUs.service.MailContent;
import exchange.init.ApplicationContextHelper;
import members.Model.MemberBean;
import sendmail.ActivityMailDao;
import sendmail.SendMail;

@Component
public class SendActivityMailJob implements Job {


	@Override
	public void execute(JobExecutionContext jobContext) throws JobExecutionException {
		try {
			ActivityService aService = ApplicationContextHelper.getBean(ActivityService.class);
			SendMail mail = ApplicationContextHelper.getBean(SendMail.class);
			MailContent content = ApplicationContextHelper.getBean(MailContent.class);
			ActivityMailDao dao = ApplicationContextHelper.getBean(ActivityMailDao.class);
			List<ActivityBean> aBean = aService.getAllActivityYesterday();
			if (aBean.size() > 0) {
				for (ActivityBean bean : aBean) {
					String mailString = dao.getAllMembersEmail();

					mail.setHideEmail(mailString);
					mail.setSubject("test");
					mail.setMailContent("testmail");
					mail.sendMail();
					
				}
			} else {
				System.out.println("no data");
			}
			System.out.println("====send email success====");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
