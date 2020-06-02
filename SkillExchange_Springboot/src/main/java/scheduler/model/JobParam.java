package scheduler.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "JobParam")
public class JobParam {
	public static final String JOB_PARAM = "jobParam";
	private Integer jobNo;
	private String jobName;
	private String jobGroup;
	private String jobTrigger;
	private String status;
	private String cronExpression;
	private Boolean isSync = false;
	private String description;
	private Date updateTime = new Date();

	@Column(name="jobName")
	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	@Column(name="jobGroup")
	public String getJobGroup() {
		return jobGroup;
	}

	public void setJobGroup(String jobGroup) {
		this.jobGroup = jobGroup;
	}

	@Transient
	public String getJobTrigger() {
		return jobTrigger;
	}

	public void setJobTrigger(String jobTrigger) {
		this.jobTrigger = jobTrigger;
	}

	@Column(name="jobStatus")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name="cronExpression")
	public String getCronExpression() {
		return cronExpression;
	}

	public void setCronExpression(String cronExpression) {
		this.cronExpression = cronExpression;
	}

	@Column(name="isSync")
	public Boolean getIsSync() {
		return isSync;
	}

	public void setIsSync(Boolean isSync) {
		this.isSync = isSync;
	}

	@Column(name="description")
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name="updateTime")
	public Date getUpdatedTime() {
		return updateTime;
	}

	public void setUpdatedTime(Date updatedTime) {
		this.updateTime = updatedTime;
	}

	@Id
	@Column(name = "jobNo")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getJobNo() {
		return jobNo;
	}

	public void setJobNo(Integer jobNo) {
		this.jobNo = jobNo;
	}
}
