package messageAnn.model;

import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import myPublish.Model.MyPublishBean;
import publishPage.Model.publishSelectBean;


@Repository
public class messageAnnDao implements imessageAnnDao {
	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	ServletContext ctx;
	
	public Session getSession() {
		return factory.getCurrentSession();
	}
	
	@Override
	public messageAnnBean saveMessage(messageAnnBean messBean)  {
		
		this.getSession().save(messBean);
		return messBean;
	}
	@Override
	public List<messageAnnBean> callMessage() {
		Query query = getSession().createQuery("from messageAnnBean order by msgid DESC",messageAnnBean.class);
		List<messageAnnBean> messageAnnBeans = query.list();
		return messageAnnBeans;
	}
	
	@Override
	public List<messageAnnBean> msgAnnImfor(int msgid){
		Query<messageAnnBean> query = getSession().createQuery("from messageAnnBean where msgid = :msgid",messageAnnBean.class);
		query.setParameter("msgid", msgid);
		List<messageAnnBean> msgAnnBeans = query.list();
		return msgAnnBeans;
	}
}
