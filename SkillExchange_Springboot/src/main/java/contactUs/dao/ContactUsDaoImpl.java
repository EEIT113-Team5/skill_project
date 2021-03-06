package contactUs.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import contactUs.model.ContactUsBean;
import myCollection.model.UpdateCollectionsException;

@Repository
public class ContactUsDaoImpl implements ContactUsDao {

	@Autowired
	SessionFactory factory;

	public Session getSession() {
		return factory.getCurrentSession();
	}

	@Override
	public boolean insertContactUs(ContactUsBean cntUs) {
		getSession().save(cntUs);
		if (cntUs != null) {
			return true;
		}
		return false;
	}

	@Override
	public List<ContactUsBean> queryContactUs() {
		try {
			Query<ContactUsBean> query = getSession().createQuery("from ContactUsBean CU order by CU.createTime desc",
					ContactUsBean.class);
			List<ContactUsBean> ContactUsBeanList = query.list();
			return ContactUsBeanList;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("發生SQL例外: " + e.getMessage());
		}
	}

	@Override
	public ContactUsBean queryContactUsDetail(Integer contactNo) {
		try {
			ContactUsBean cntBean = getSession().get(ContactUsBean.class, contactNo);
			return cntBean;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("發生SQL例外: " + e.getMessage());
		}
	}

	@Override
	public ContactUsBean updateReplyContent(Integer contactNo, String replyContent) throws UpdateCollectionsException {
		String hql = "UPDATE ContactUsBean CU SET CU.isReply = 1,CU.replyContent = :replyContent,CU.updateTime = GetDate()  WHERE CU.contactNo = :contactNo";
		int n = 0;
		try {
			@SuppressWarnings("unchecked")
			Query<ContactUsBean> query = getSession().createQuery(hql);
			query.setParameter("replyContent", replyContent);
			query.setParameter("contactNo", contactNo);
			n = query.executeUpdate();
			ContactUsBean cntBean = queryContactUsDetail(contactNo);

			if (n < 1) {
				throw new UpdateCollectionsException("更新失敗");
			} else {
				return cntBean;
			}

		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("發生SQL例外: " + e.getMessage());
		}

	}

	@Override
	public Integer queryUnReplyContactUs() {
		try {
			Query<ContactUsBean> query = getSession().createQuery("from ContactUsBean where isReply = 0",
					ContactUsBean.class);
			List<ContactUsBean> ContactUsBeanList = query.list();
			Integer unReplyCount = ContactUsBeanList.size();
			return unReplyCount;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("發生SQL例外: " + e.getMessage());
		}
	}

}