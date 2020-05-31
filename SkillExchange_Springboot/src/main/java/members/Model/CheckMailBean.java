package members.Model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "checkMail")
public class CheckMailBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer checkMailNo ;			//流水號
	private String memberMail;				
	private String captcha;					//驗證碼
	private String checkStatus;				//確認狀態
	private java.sql.Timestamp sendTime;	//驗證碼發送日期
	private java.sql.Timestamp dateLine;	//驗證碼期限
	
	public CheckMailBean() {
	}

	public CheckMailBean(Integer checkMailNo, String memberMail, String captcha, 
							String checkStatus, java.sql.Timestamp sendTime, java.sql.Timestamp dateLine) { 
		super();
		this.checkMailNo = checkMailNo;
		this.memberMail = memberMail;
		this.captcha = captcha;
		this.checkStatus = checkStatus;
		this.sendTime = sendTime;
		this.dateLine = dateLine;
	}
	
	
	@Id
	@Column(name = "checkMailNo")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getCheckMailNo() {
		return checkMailNo;
	}
	public void setCheckMailNo(Integer checkMailNo) {
		this.checkMailNo = checkMailNo;
	}
	
	@Column(name = "memberMail")
	public String getMemberMail() {
		return memberMail;
	}
	public void setMemberMail(String memberMail) {
		this.memberMail = memberMail;
	}
	
	@Column(name = "captcha")
	public String getCaptcha() {
		return captcha;
	}
	public void setCaptcha(String captcha) {
		this.captcha = captcha;
	}
	
	@Column(name = "checkStatus")
	public String getCheckStatus() {
		return checkStatus;
	}
	public void setCheckStatus(String checkStatus) {
		this.checkStatus = checkStatus;
	}
	
	@Column(name = "sendTime")
	public java.sql.Timestamp getSendTime() {
		return sendTime;
	}
	public void setSendTime(java.sql.Timestamp sendTime) {
		this.sendTime = sendTime;
	}
	
	@Column(name = "dateLine")
	public java.sql.Timestamp getDateLine() {
		return dateLine;
	}
	public void setDateLine(java.sql.Timestamp dateLine) {
		this.dateLine = dateLine;
	}
	
}
