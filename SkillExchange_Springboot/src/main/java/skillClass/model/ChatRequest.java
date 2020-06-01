package skillClass.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Chatrequest")
public class ChatRequest implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "reqid")
	private Integer reqid;
	@Column(name = "publishNo")
	private Integer publishNo;
	@Column(name = "sendNo")
	private Integer sendNo;
	@Column(name = "receiveNo")
	private Integer receiveNo;
	@Column(name = "reqtime")
	private java.sql.Timestamp reqtime;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "sendNo", insertable=false, updatable=false)
	private Member sendNomember;
//	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "receiveNo", insertable=false, updatable=false)
	private Member receiveNomember;

	public Member getSendNomember() {
		return sendNomember;
	}

	public void setSendNomember(Member sendNomember) {
		this.sendNomember = sendNomember;
	}

	public Member getReceiveNomember() {
		return receiveNomember;
	}

	public void setReceiveNomember(Member receiveNomember) {
		this.receiveNomember = receiveNomember;
	}

	public ChatRequest() {

	}

	public ChatRequest(Integer publishNo, Integer sendNo, Integer receiveNo, java.sql.Timestamp reqtime) {

		this.publishNo = publishNo;
		this.sendNo = sendNo;
		this.receiveNo = receiveNo;
		this.reqtime = reqtime;
	}

	public java.sql.Timestamp getReqtime() {
		return reqtime;
	}

	public void setReqtime(java.sql.Timestamp reqtime) {
		this.reqtime = reqtime;
	}

	public Integer getReqid() {
		return reqid;
	}

	public void setReqid(Integer reqid) {
		this.reqid = reqid;
	}

	public Integer getPublishNo() {
		return publishNo;
	}

	public void setPublishNo(Integer publishNo) {
		this.publishNo = publishNo;
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

}
