package sendmail;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import members.Model.MemberBean;

@Repository
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
		String hql = "from mBean where accStatus = 1";
		Query<MemberBean> query = getSession().createQuery(hql);
		List<MemberBean> data = query.list();
		for(MemberBean mBean : data) {
			String mail = mBean.getMemberMail();
			mails.append(","+mail);
		}
		emailList = mails.toString();
		return emailList;
	}

}
