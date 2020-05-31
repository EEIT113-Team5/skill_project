package messageAnn.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "messageAnn")
public class messageAnnBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	int msgid;
	String message;
	Date anntime;
	
	public messageAnnBean() {
		
	}
	
	public messageAnnBean(String message,Date anntime) {
		super();
		this.message = message;
		this.anntime = anntime;
	}
	
	@Id
	@Column(name = "msgid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getMsgid() {
		return msgid;
	}

	public void setMsgid(int msgid) {
		this.msgid = msgid;
	}
	@Column(name = "message")
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	@Column(name = "anntime")
	public Date getAnntime() {
		return anntime;
	}

	public void setAnntime(Date anntime) {
		this.anntime = anntime;
	}
	
	
}
