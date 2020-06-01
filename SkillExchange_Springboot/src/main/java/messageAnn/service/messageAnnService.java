package messageAnn.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import messageAnn.model.imessageAnnDao;
import messageAnn.model.messageAnnBean;

@Service
@Transactional
@EnableTransactionManagement
public class messageAnnService implements imessageAnnService {
	
	@Autowired
	imessageAnnDao msgDao;
	
	@Override
	public messageAnnBean saveMessage(messageAnnBean messBean) {
		return msgDao.saveMessage(messBean);
	}
	
	@Override
	public List<messageAnnBean> callMessage() {
		return msgDao.callMessage();
	}
	
	@Override
	public List<messageAnnBean> msgAnnImfor(int msgid){
		return msgDao.msgAnnImfor(msgid);
	}
	
}
