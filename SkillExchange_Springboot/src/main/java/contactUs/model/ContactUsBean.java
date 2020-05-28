package contactUs.model;

import javax.mail.MessagingException;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Component;

import sendmail.SendMail;

@Component
@Entity
@Table(name = "ContactUs")
public class ContactUsBean {
	private int contactNo;
	private int memberRegNo;
	private String contactUser;
	private String email;
	private String title;
	private String content;
	private int isReply;
	private String replyContent;
	@Autowired
	@Qualifier("mail")
	private MailContent mail;
	@Autowired
	private SendMail sendMail;
	



	public ContactUsBean(int memberRegNo, String contactUser, String email, String title, String content,String replyContent) {
		this.memberRegNo = memberRegNo;
		this.contactUser = contactUser;
		this.email = email;
		this.title = title;
		this.content = content;
		this.replyContent = replyContent;
	}

	public ContactUsBean() {
	}

	@Id
	@Column(name = "contactNo")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getContactNo() {
		return contactNo;
	}

	public void setContactNo(int contactNo) {
		this.contactNo = contactNo;
	}

	@Column(name = "memberRegNo")
	public int getMemberRegNo() {
		return memberRegNo;
	}

	public void setMemberRegNo(int memberRegNo) {
		this.memberRegNo = memberRegNo;
	}

	@Column(name = "contactUser")
	public String getContactUser() {
		return contactUser;
	}

	public void setContactUser(String contactUser) {
		this.contactUser = contactUser;
	}

	@Column(name = "email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "title")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "content")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append(", memberRegNo=");
		builder.append(memberRegNo);
		builder.append(", contactUser=");
		builder.append(contactUser);
		builder.append(", email=");
		builder.append(email);
		builder.append(", title=");
		builder.append(title);
		builder.append(", content=");
		builder.append(content);
		builder.append("]");
		return builder.toString();
	}

	public void sendContactEmail(ContactUsBean cntUs) throws MessagingException {
		try {
		mail.setContactUser(contactUser);
		mail.setContent(content);
		
		String subject;
		String mailContent;
		if(cntUs.getReplyContent()!=null) {
			this.mail.setReplyContent(replyContent);
			mailContent = mail.getReplyContactMail();
			subject = "管理者已回覆您的留言！";
		}else {
			
			 subject = "感謝您的留言，我們將盡快回覆！";
			 mailContent = mail.getInsertContactMail();
			 
		}
		sendMail.setSubject(subject);
		sendMail.setEmail(email);
		sendMail.setMailContent(mailContent);
		sendMail.sendMail();
		}catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("發生SQL例外: " + e.getMessage());	
			}
		
	}

	@Column(name = "isReply")
	public int getIsReply() {
		return isReply;
	}

	public void setIsReply(int isReply) {
		this.isReply = isReply;
	}

	@Column(name = "replyContent")
	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

}