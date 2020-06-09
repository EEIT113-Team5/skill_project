package members.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import members.Model.CheckMailBean;
import members.Model.CheckMailDao;
import sendmail.SendMail;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.Random;

import javax.mail.MessagingException;
import javax.transaction.Transactional;

@Service
@Transactional
@EnableTransactionManagement
public class CheckMailService {
	
	@Autowired
	private CheckMailDao mbDao;
	
	@Autowired
	private SendMail sendMail;
	
	//儲存驗證碼資料料庫方法
	public CheckMailBean saveCheckMail(CheckMailBean checkBean)throws SQLException, ParseException{
		return mbDao.saveCheckMail(checkBean);
	}
	
	//取得驗證碼
	public String getNewCaptcha() {
		//先將所有的字母和0-9的數字存放於一個字串中，以便後續使用。
		String str = "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789";
		
		//建立一個 Random 物件，
		Random random = new Random();

		//生成一條長度為10以內的隨機字串
		StringBuffer stringBuffer = new StringBuffer();
		
		//確定字串長度
		int stringLength = (int) (Math.random()*10);
		
		if (stringLength<5) {
			stringLength = 5;
		}
		
		//再利用 for 迴圈就可以生成一條長度為10以內的隨機字串
		for (int j = 0; j < stringLength; j++  ) {
			
			//利用其中的 nextInt(str.length) 方法生成一個隨機數。
			int index = random.nextInt(str.length());
			
			//再將上述生成的隨機數作為 str 字串的索引取出相應的字元，及隨機生成了一個字元
			char c = str.charAt(index);
			
			stringBuffer.append(c);  
		}
		//將StringBuffer轉換為String型別的字串
		String string = stringBuffer.toString();
		
		//回傳驗證碼
		return string;
	}
	
	// 產生驗證碼方法
	public CheckMailBean generateCaptcha(CheckMailBean checkBean)throws SQLException, ParseException{
		
		//將StringBuffer轉換為String型別的字串
		String string = getNewCaptcha();
		checkBean.setCaptcha(string);
		return mbDao.saveCheckMail(checkBean);
	}
	
	//寄發驗證信
	public void sendCaptchaMail(CheckMailBean checkBean) throws MessagingException {
		String subject = "感謝您加入會員，請點選驗證碼，即可加入成功！";
		String mailContent = "請點選下列網址進行驗證，即可加入成功！SkillExchange團隊  感謝您加入會員！<br>"
				+ "http://localhost:8080/SkillExchange_Springboot/goUse?numer=" + checkBean.getCaptcha() + "&op=" + checkBean.getCheckMailNo();

		sendMail.setSubject(subject);
		sendMail.setMailContent(mailContent);
		sendMail.setEmail(checkBean.getMemberMail());
		sendMail.sendMail();
	}
	
	public CheckMailBean selectCheckMailBeanByCaptcha(String captcha, Integer checkMailNo)  {
		CheckMailBean checkBean = mbDao.selectCaptcha(captcha, checkMailNo);
		return checkBean;
	}
	
	public void updateStatus(String captcha, Integer checkMailNo) throws SQLException, ParseException {
		mbDao.updateStatus(captcha, checkMailNo);
	}
}	

	/*
	public boolean checkCaptcha(String captcha)  {
		boolean statusIsN = false;
		
		CheckMailBean checkBean = mbDao.selectCaptcha(captcha);
		if (checkBean != null) {
			if ("N".equals(checkBean.getCheckStatus())) {
				statusIsN = true;
			}
			// statusIsN = "N".equals(checkBean.getCheckStatus());
		}
		
		return statusIsN;
	}
	*/