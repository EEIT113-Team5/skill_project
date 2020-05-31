package members.Model;

import java.sql.SQLException;
import java.text.ParseException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import myCollection.model.CollectionGroup;

@Repository
public class CheckMailDao {
	
	@Autowired
	SessionFactory factory;
	
	@Autowired
	ServletContext ctx;
	
	public Session getSession() {
		return factory.getCurrentSession();
	}
	
	@SuppressWarnings("unchecked")
	public CheckMailBean selectCaptcha(String captcha, Integer checkMailNo) {
		Query<CheckMailBean> query = getSession().createQuery("Select s From CheckMailBean s "
				+ "Where s.captcha = :captcha And checkMailNo = :checkMailNo ");
		query.setParameter("captcha", captcha);
		query.setParameter("checkMailNo", checkMailNo);
		
		List<CheckMailBean> CheckMailBeanList = query.list();
		
		CheckMailBean checkMailBean = null;
		
		if (CheckMailBeanList != null) {
			if (CheckMailBeanList.size() > 0) {
				checkMailBean = CheckMailBeanList.get(0);
			}
		}
		return checkMailBean;
	}
	
	public CheckMailBean saveCheckMail(CheckMailBean checkBean) throws SQLException, ParseException {
		this.getSession().save(checkBean);
		return checkBean;
	}
	
	@SuppressWarnings("unchecked")
	@Transactional
	public void updateStatus(String captcha, Integer checkMailNo)throws SQLException, ParseException {
		
		String hql = "UPDATE CheckMailBean cm Set cm.checkStatus = 'Y' "
				+ "Where cm.checkStatus = 'N' And captcha = :captcha And checkMailNo = :checkMailNo ";
		Query<CollectionGroup> query = getSession().createQuery(hql);
		query.setParameter("captcha", captcha);
		query.setParameter("checkMailNo", checkMailNo);
		
		int n = query.executeUpdate();
		if (n < 1) {
			throw new SQLException("更新失敗");
		} 
	}

}
