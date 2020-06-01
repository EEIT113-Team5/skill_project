package messageAnn.service;

import java.util.List;

import messageAnn.model.messageAnnBean;

public interface imessageAnnService {

	messageAnnBean saveMessage(messageAnnBean messBean);
	
	List<messageAnnBean> callMessage(); 

	List<messageAnnBean> msgAnnImfor(int msgid);
}