package messageAnn.model;

import java.util.List;

public interface imessageAnnDao {

	messageAnnBean saveMessage(messageAnnBean messBean);
	
	List<messageAnnBean> callMessage();
	
	List<messageAnnBean> msgAnnImfor(int msgid);

}