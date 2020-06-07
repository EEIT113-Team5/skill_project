package members.Model;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class UpdateDao {
	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	ServletContext ctx;
	
	public Session getSession() {
		return factory.getCurrentSession();
	}
	
	public MemberBean SaveUpdateMember(MemberBean mbean) throws SQLException, ParseException {
		this.getSession().save(mbean);
		
		return mbean;
		
	}
	
	public void updateMember(String memberAcc, String memberPwd, 
			String memberNic, String memberPhone, 
			String memberMail, String memberAddr)throws SQLException, ParseException {
		
		return;
	}	
	
	@SuppressWarnings("unchecked")
	public MemberBean selectAcc(String memberAcc) {
		Query<MemberBean> query = getSession()
				.createQuery("Select m From MemberBean m Where m.memberAcc = :memberAcc");
		query.setParameter("memberAcc", memberAcc);
		
		List<MemberBean> memberBeanList = query.list();
		
		MemberBean memberBean = null;
		
		if (memberBeanList != null) {
			if (memberBeanList.size() > 0) {
				memberBean = memberBeanList.get(0);
			}
		}
		return memberBean;
	}
	
	public MemberBean getAcc(String memberAcc) {
		return factory.getCurrentSession().get(MemberBean.class, memberAcc);
	}
	
	
	
	
}
