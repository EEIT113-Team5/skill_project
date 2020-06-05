package scheduler;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

import exchange.init.ApplicationContextHelper;
import scheduler.model.JobParam;

@Controller
@SessionAttributes({ "MsgOK","MsgUpOK" })
public class JobTaskController {
	@Autowired
	JobTaskService service;

	@GetMapping(value = "/scheduler")
	public String findContactUs() {
		return "scheduler/schedulerPage";
	}

	@GetMapping(value = "/getAllJob")
	public String getJobParam(Model model) {
		Map<String, String> errorMsg = new HashMap<String, String>();
		Map<String, String> msgOK = new HashMap<String, String>();
		model.addAttribute("MsgMap", errorMsg);
		model.addAttribute("MsgOK", msgOK);
		try {
			List<JobParam> jobList = service.getJobParam();
			model.addAttribute("jobList", jobList);
		} catch (Exception e) {
			e.printStackTrace();
			errorMsg.put("queryError", "發生異常,訊息:" + e.getCause());
		}
		if (!errorMsg.isEmpty()) {
			return "redirect:/scheduler";
		}
		return "scheduler/schedulerPage";
	}

	@PostMapping(value = "/updateJob")
	public String updateJobCron(@RequestParam("jobNo") Integer jobNo,
			@RequestParam("cronExpression") String cronExpressionStr, @RequestParam("status") String status,
			@RequestParam("cronGroup") String jobGroup, @RequestParam("cronName") String jobName, Model model) {
		
		Map<String, String> errorMsg = new HashMap<String, String>();
		Map<String, String> msgOK = new HashMap<String, String>();
		model.addAttribute("MsgMap", errorMsg);
		model.addAttribute("MsgUpOK", msgOK);

		try {
			String cronExpression = "0/5 * * * * ?";
			JobTaskService jobService = ApplicationContextHelper.getBean(JobTaskService.class);
			jobService.updateJobCron(jobNo, cronExpression, status, jobGroup.trim(), jobName.trim());
			msgOK.put("updateOK", "設定成功！");
		} catch (SchedulerException e) {
			e.printStackTrace();
			errorMsg.put("updateFail", "回覆失敗請再操作一次");
		}
		if (!errorMsg.isEmpty()) {
			return "scheduler/schedulerPage";
		}
		return "redirect:/getAllJob";
	}
}
