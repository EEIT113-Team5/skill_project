package skillClass.model;

import java.io.Serializable;
import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Chat")
public class Chat implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer message;
	private Integer sendNo; 		
	private Integer receiveNo; 		
	private String sendUser;
	private String toUser;
	private String ChatLog;
	private LocalDateTime LogTime; 
	
	public Chat(){
		
	}
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getMessage() {
		return message;
	}

	public void setMessage(Integer message) {
		this.message = message;
	}

	public Integer getSendNo() {
		return sendNo;
	}

	public void setSendNo(Integer sendNo) {
		this.sendNo = sendNo;
	}

	public Integer getReceiveNo() {
		return receiveNo;
	}

	public void setReceiveNo(Integer receiveNo) {
		this.receiveNo = receiveNo;
	}

	public String getSendUser() {
		return sendUser;
	}

	public void setSendUser(String sendUser) {
		this.sendUser = sendUser;
	}

	public String getToUser() {
		return toUser;
	}

	public void setToUser(String toUser) {
		this.toUser = toUser;
	}

	public String getChatLog() {
		return ChatLog;
	}

	public void setChatLog(String chatLog) {
		ChatLog = chatLog;
	}

	public LocalDateTime getLogTime() {
		return LogTime;
	}

	public void setLogTime(LocalDateTime logTime) {
		LogTime = logTime;
	}
	
	
	
	
	
}
