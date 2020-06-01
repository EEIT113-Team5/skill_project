package sendmail.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import activity.bean.ActivityBean;
import members.Model.MemberBean;

@Repository
@Transactional
public class ActivityMailDaoImpl implements ActivityMailDao {
	@Autowired
	MemberBean mBean;
	@Autowired
	SessionFactory factory;

	public Session getSession() {
		return factory.getCurrentSession();
	}

	@Override
	public String getAllMembersEmail() {
		StringBuffer mails = new StringBuffer();
		String emailList;
		String hql = "from MemberBean where accStatus = 1";
		Query<MemberBean> query = getSession().createQuery(hql);
		List<MemberBean> data = query.list();
		for(MemberBean mBean : data) {
			String mail = mBean.getMemberMail();
			mails.append(mail+",");
		}
		emailList = mails.deleteCharAt(mails.length()-1).toString();
		System.out.println(emailList);
		return emailList;
	}
	
	@Override
	public List<ActivityBean> getAllActivityYesterday() {
		String hql = "from ActivityBean AB where convert(date,AB.insertime,112)= convert(date,GETDATE()-1,112)";
		Query query = getSession().createQuery(hql);
		List<ActivityBean> list = query.list();
		return list;
	}

}
