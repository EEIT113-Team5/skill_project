package scheduler.model.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import scheduler.model.JobParam;

public interface JobParamDao {
	
	List<JobParam> getJobParam();
	List<JobParam> getInActiveJobParam();
	JobParam getJobParamByNo(Integer jobNo);
	void updateJobParam(String cronExpression,Integer jobNo,String status,String jobGroup,String jobName);
	boolean insertJobParam(JobParam jobParam);
	void deleteJobParam(Integer jobNo);
}
