package skillClass.dao.impl;

import java.time.LocalDateTime;
import java.util.List;
import org.apache.commons.collections.CollectionUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.itextpdf.text.pdf.PdfStructTreeController.returnType;

import skillClass.dao.SkillDao;
import skillClass.model.Chat;
import skillClass.model.ChatRequest;
import skillClass.model.Publish;
import skillClass.model.Skill2;


@Transactional
@Repository
public class SkillDaoImpl implements SkillDao {
	SessionFactory factory;

	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public SkillDaoImpl() {
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Publish> skillQuery(String skillType) {

		String hql = "from Publish P join fetch P.member WHERE P.skillType = :skillType and P.status=1 order by UpdateTime DESC";
		Session session = getSession();
		Query<Publish> query = session.createQuery(hql);
		query.setParameter("skillType", skillType);
		return query.list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Publish> detailQuery(Integer PublishNo) {

		String hql = "from Publish P join fetch P.member WHERE P.publishNo = :publishNo";
		Session session = getSession();
		Query<Publish> query = session.createQuery(hql).setParameter("publishNo", PublishNo);
		return query.list();
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Publish> allskill() {

		String hql = "from Publish P join fetch P.member where P.status=1 order by UpdateTime DESC";
		Session session = getSession();
		List<Publish> list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public List<Chat> LogQuery(String sendUser,String sendTo) {
		System.out.println("觸發Dao logquery");

		String hql = "from Chat C WHERE C.toUser = :toUser and C.sendUser = :sendUser order by LogTime ASC";
		Session session = getSession();
		@SuppressWarnings("unchecked")
		Query<Chat> query = session.createQuery(hql).setParameter("toUser", sendUser).setParameter("sendUser", sendTo);

		System.out.println(query.list());

		if (CollectionUtils.isEmpty(query.list())) {

			System.out.println("no data");

			return null;
		} else {
			System.out.println("had data");
			return query.list();

		}
	}
	@Override
	public List<Chat> LogQuery2(String sendUser,String sendTo) {
		System.out.println("觸發logquery2");

		String hql = "from Chat C WHERE C.toUser = :toUser and C.sendUser = :sendUser order by LogTime DESC";
		Session session = getSession();
		@SuppressWarnings("unchecked")
		Query<Chat> query = session.createQuery(hql).setParameter("toUser", sendUser).setParameter("sendUser", sendTo);

		System.out.println(query.list());

		if (CollectionUtils.isEmpty(query.list())) {

			System.out.println("no data");

			return null;
		} else {
			System.out.println("had data");
			return query.list();

		}
	}

	@Override
	public boolean CTRUpdate(Integer PublishNo) {
		String hql = " update Publish P set P.publishCTR=publishCTR+1 where P.publishNo=:publishNo";
		Session session = getSession();
		@SuppressWarnings("rawtypes")
		Query query = session.createQuery(hql).setParameter("publishNo", PublishNo);
		query.executeUpdate();
		return true;
	}
	@Override
	public boolean ClassCTRUpdate(String skillType) {
		String hql = " update Skill2 s set s.typeCTR=typeCTR+1 where s.typeCN=:TypeCN";
		Session session = getSession();
		@SuppressWarnings("rawtypes")
		Query query = session.createQuery(hql).setParameter("TypeCN",skillType);
		query.executeUpdate();
		return true;
	}
	@Override
	public boolean LogUpdate(Integer sendNo, Integer receiveNo, String sendUser, String toUser, String ChatLog,
			LocalDateTime LogTime) {
//		String hql="insert into Chat(sendNo, receiveNo, sendUser,toUser,ChatLog,LogTime) "+
//		    "select sendNo, receiveNo, sendUser,toUser,ChatLog,LogTime from Chat";
		System.out.println("呼叫Log方法");
//		String hql="update Chat set sendNo=? , receiveNo=? , sendUser=? , toUser=? , chatLog=? , logTime=?";
		Session session = getSession();
		Chat log = new Chat();
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

		System.out.println(sendNo + sendUser + receiveNo + toUser);
		return true;
	}

	// 對話框
	@Override
	public ChatRequest InsertChatReq(ChatRequest cr) {
		@SuppressWarnings("rawtypes")
		Query query = getSession().createQuery(
				"select m from ChatRequest m where m.sendNo = :sendNo and m.receiveNo = :receiveNo and m.publishNo = :publishNo");
		query.setParameter("sendNo", cr.getSendNo());
		query.setParameter("receiveNo", cr.getReceiveNo());
		query.setParameter("publishNo", cr.getPublishNo());
		System.out.println(cr.getSendNo() + "@@@@" + cr.getReceiveNo() + "@@@@" + cr.getPublishNo());
		@SuppressWarnings("unchecked")
		List<ChatRequest> ChatRequestList = query.list();
		if (ChatRequestList.isEmpty()) {
			getSession().save(cr);
			return cr;
		}

		return cr;
	}
	
	@Override
	public List<ChatRequest> selectChatReq(Integer receiveNo, Integer publishNo) {
		@SuppressWarnings("rawtypes")
		Query query = getSession()
				.createQuery("select m from ChatRequest m where m.receiveNo = :receiveNo and m.publishNo = :publishNo");
		query.setParameter("receiveNo", receiveNo);
		query.setParameter("publishNo", publishNo);
		@SuppressWarnings("unchecked")
		List<ChatRequest> ChatRequestList = query.list();
		return ChatRequestList;
	}
	@Override
	public List<Skill2> GetBackendCTR(){
		String hql = "from Skill2";
		Session session = getSession();
		@SuppressWarnings("rawtypes")
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Skill2> CTRList = query.list();
		return CTRList ;
	}
	
	public Session getSession() {
		return factory.getCurrentSession();
	}
}
