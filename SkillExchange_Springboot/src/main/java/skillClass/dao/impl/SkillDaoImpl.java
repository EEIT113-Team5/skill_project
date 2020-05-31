package skillClass.dao.impl;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

import skillClass.dao.SkillDao;
import skillClass.model.Chat;
import skillClass.model.Publish;


@Transactional
@Repository
public class SkillDaoImpl implements SkillDao {
	SessionFactory factory;
	
	
	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory=factory;		
	}
	
	public SkillDaoImpl() {}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Publish> skillQuery(String skillType) {
		
		String hql  = "from Publish P join fetch P.member WHERE P.skillType = :skillType order by UpdateTime DESC";
		Session session = getSession();
		Query<Publish> query =session.createQuery(hql);
		query.setParameter("skillType",skillType);
		return query.list();
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Publish> detailQuery(Integer PublishNo) {
		
		String hql  = "from Publish P join fetch P.member WHERE P.publishNo = :publishNo";
		Session session = getSession();
		Query<Publish> query =session.createQuery(hql).setParameter("publishNo",PublishNo);
		return query.list();
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Publish> allskill() {
		
		String hql  = "from Publish P join fetch P.member order by UpdateTime DESC";
		Session session = getSession();
		List<Publish> list =session.createQuery(hql).getResultList();
		return list;
	}
	@Override	
	public List<Chat> LogQuery(String sendUser){
		System.out.println("觸發logquery");
		
		String hql  = "from Chat C WHERE C.toUser = :toUser";
		Session session = getSession();
		@SuppressWarnings("unchecked")
		Query<Chat> query =session.createQuery(hql).setParameter("toUser",sendUser);
		
		System.out.println(query.list());
		
		if(CollectionUtils.isEmpty(query.list())) {
				
			System.out.println("no data");
			
			return null;
		}
		else {	
			System.out.println("had data");
			return query.list();
	
		}
	}
	@Override	
	public boolean CTRUpdate(Integer PublishNo) {
		String hql=" update Publish P set P.publishCTR=publishCTR+1 where P.publishNo=:publishNo";
		Session session = getSession();
		@SuppressWarnings("rawtypes")
		Query query = session.createQuery(hql).setParameter("publishNo",PublishNo );
		query.executeUpdate();
		return true;
	}	
	@Override	
	public boolean LogUpdate(Integer sendNo,Integer receiveNo,String sendUser,String toUser,String ChatLog,LocalDateTime LogTime) {
//		String hql="insert into Chat(sendNo, receiveNo, sendUser,toUser,ChatLog,LogTime) "+
//		    "select sendNo, receiveNo, sendUser,toUser,ChatLog,LogTime from Chat";
		System.out.println("呼叫Log方法");		
//		String hql="update Chat set sendNo=? , receiveNo=? , sendUser=? , toUser=? , chatLog=? , logTime=?";
		Session session = getSession();
		Chat log=new Chat();
		log.setSendNo(sendNo);
		log.setReceiveNo(receiveNo);
		log.setSendUser(sendUser);
		log.setToUser(toUser);
		log.setChatLog(ChatLog);
		log.setLogTime(LogTime);
	      
		session.save(log);
//		Query query = session.createQuery(hql);		
//		query.setParameter("sendNo",sendNo );
//		query.setParameter("receiveNo",receiveNo );
//		query.setParameter("sendUser",sendUser );
//		query.setParameter("toUser",toUser );
//		query.setParameter("chatLog",ChatLog );
//		query.setParameter("logTime",LogTime );
//		query.executeUpdate();
		
		System.out.println(sendNo+sendUser+receiveNo+toUser);
		return true;
	}
	
	public Session getSession() {
        return factory.getCurrentSession();			
	}
}
