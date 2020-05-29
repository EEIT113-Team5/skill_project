package contactUs.service;

import java.util.List;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import contactUs.dao.ContactUsDao;
import contactUs.model.ContactUsBean;
import myCollection.model.UpdateCollectionsException;
import sendmail.SendMail;

@Service
@Transactional
@EnableTransactionManagement
public class ContactUsServiceImpl implements ContactUsService {

	@Autowired
	ContactUsDao cntUsDao;
	@Autowired
	private MailContent mail;
	@Autowired
	private SendMail sendMail;

	@Override
	public boolean insertContactUs(ContactUsBean cntUs) {
		return cntUsDao.insertContactUs(cntUs);
	}

	@Override
	public List<ContactUsBean> queryContactUs() {
		return cntUsDao.queryContactUs();
	}

	@Override
	public ContactUsBean queryContactUsDetail(Integer contactNo) {
		return cntUsDao.queryContactUsDetail(contactNo);
	}

	@Override
	public ContactUsBean updateReplyContent(Integer contactNo, String replyContent) throws UpdateCollectionsException {
		return cntUsDao.updateReplyContent(contactNo, replyContent);
	}

	@Override
	public void sendContactEmail(ContactUsBean cntUs) throws MessagingException {
		String subject;
		String mailContent;

		try {
			mail.setContactUser(cntUs.getContactUser());
			mail.setContent(cntUs.getContent());

			if (cntUs.getReplyContent() != null) {
				this.mail.setReplyContent(cntUs.getReplyContent());
				mailContent = mail.getReplyContactMail();
				subject = "管理者已回覆您的留言！";
			} else {

				subject = "感謝您的留言，我們將盡快回覆！";
				mailContent = mail.getInsertContactMail();

			}
			sendMail.setSubject(subject);
			sendMail.setEmail(cntUs.getEmail());
			sendMail.setMailContent(mailContent);
			sendMail.sendMail();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("發生SQL例外: " + e.getMessage());
		}

	}

}