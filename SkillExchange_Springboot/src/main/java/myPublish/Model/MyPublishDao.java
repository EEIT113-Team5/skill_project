package myPublish.Model;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MyPublishDao implements iMyPublishDao {

	@Autowired
	SessionFactory factory;
	
	@Autowired
	ServletContext ctx;
	
	public Session getSession() {
		return factory.getCurrentSession();
	}
	
	//我的刊登
	@Override
	public List<MyPublishBean> myPublish(int memberRegNo) {
		@SuppressWarnings("unchecked")
		Query<MyPublishBean> query = getSession()
				.createQuery("select p from MyPublishBean p where p.memberRegNo = :memberRegNo And p.status = :status");
		query.setParameter("memberRegNo", memberRegNo);
		query.setParameter("status", "1");
		List<MyPublishBean> myPublishBeans = query.list();
		return myPublishBeans;
	}

	//歷史刊登
	@Override
	public List<MyPublishBean> myPublishHistory(int memberRegNo) {
		@SuppressWarnings("unchecked")
		Query<MyPublishBean> query = getSession()
		.createQuery("select p from MyPublishBean p where p.memberRegNo = :memberRegNo And p.status = :status");
		
		System.out.println("123:"+memberRegNo);
		
		query.setParameter("memberRegNo", memberRegNo);
		query.setParameter("status", "0");
		List<MyPublishBean> myPublishhisBeans = query.list();
		
//		System.out.println(myPublishhisBeans.get(0).getMyTitle());
		
		return myPublishhisBeans;
	}
	
	//管理員刪除
	@Override
	public boolean myPubDele(int myPubNo) {
		
		MyPublishBean publishBean = getSession().get(MyPublishBean.class, myPubNo);
		
		if (publishBean != null) {
			getSession().delete(publishBean);
			return true;
		}
		return false;
	}
	
	//使用者刪除
	@Override
	public MyPublishBean myPubStatus(MyPublishBean bean) {
		
		String hql = "Update MyPublishBean p set p.status = :status where p.publishNo = :publishNo";
		Query query = getSession().createQuery(hql);
		query.setParameter("status", "0");
		query.setParameter("publishNo", bean.getPublishNo());
		
		query.executeUpdate();
		return null;
	}
	//重新刊登
	@Override
	public MyPublishBean myPublishAgain(MyPublishBean bean) {
		
		String hql = "Update MyPublishBean p set p.status = :status , p.updateTime = :updateTime where p.publishNo = :publishNo";
		Query query = getSession().createQuery(hql);
		query.setParameter("status", "1");
		query.setParameter("publishNo", bean.getPublishNo());
		
		Date date = new Date();
		java.sql.Date updateTime = new java.sql.Date(date.getTime());
		query.setParameter("updateTime",updateTime);
		
		query.executeUpdate();
		return null;
	}

	@Override
	public MyPublishBean selUpdatePublish(int myPubNo) {

//		System.out.println(a);

		String hql = "Select PublishTitle,PublishDetail,PublishArea,City"
				+ ",District,Road,PublishPlace,OwnSkill,WantSkill,PublishMark from Publish p where p.PublishNo = ? ";
		System.out.println("dao:" + myPubNo);
		System.out.println(getSession().get(MyPublishBean.class, myPubNo));
		return getSession().get(MyPublishBean.class, myPubNo);

	}
	@Override
	public MyPublishBean datePublish(MyPublishBean bean) {
		
		if (bean.getPublishPic() == null) {
			String hql = "Update MyPublishBean p set p.myTitle = :myTitle , p.myDetail = :myDetail , p.myArea = :myArea "
					+ ", p.myCity = :myCity , p.myDistrict = :myDistrict , p.myRoad = :myRoad , p.myPlace = :myPlace ,p.myOwnSkill = :myOwnSkill , p.myWantSkill = :myWantSkill , p.updateTime = :updateTime , p.myMark = :myMark , p.skillType = :skillType , p.skillType2 = :skillType2 "
					+ "where p.publishNo = :publishNo";
			Query query = getSession().createQuery(hql);
			query.setParameter("myTitle", bean.getMyTitle());
			query.setParameter("myDetail", bean.getMyDetail());
			query.setParameter("myArea", bean.getMyArea());
			query.setParameter("myCity", bean.getMyCity());
			query.setParameter("myDistrict", bean.getMyDistrict());
			query.setParameter("myRoad", bean.getMyRoad());
			query.setParameter("myPlace", bean.getMyPlace());
			query.setParameter("myOwnSkill", bean.getMyOwnSkill());
			query.setParameter("myWantSkill", bean.getMyWantSkill());
			
			Date date = new Date();
			java.sql.Date updateTime = new java.sql.Date(date.getTime());
			query.setParameter("updateTime",updateTime);
			
			query.setParameter("myMark", bean.getMyMark());
			query.setParameter("skillType", bean.getSkillType());
			query.setParameter("skillType2", bean.getSkillType2());
			query.setParameter("publishNo", bean.getPublishNo());
			query.executeUpdate();
			return null;
		}else {
			String hql = "Update MyPublishBean p set p.myTitle = :myTitle , p.myDetail = :myDetail , p.myArea = :myArea "
					+ ", p.myCity = :myCity , p.myDistrict = :myDistrict , p.myRoad = :myRoad , p.myPlace = :myPlace , p.publishPic = :publishPic, p.myOwnSkill = :myOwnSkill , p.myWantSkill = :myWantSkill , p.updateTime = :updateTime, p.myMark = :myMark , p.skillType = :skillType , p.skillType2 = :skillType2 "
					+ "where p.publishNo = :publishNo";
			Query query = getSession().createQuery(hql);
			query.setParameter("myTitle", bean.getMyTitle());
			query.setParameter("myDetail", bean.getMyDetail());
			query.setParameter("myArea", bean.getMyArea());
			query.setParameter("myCity", bean.getMyCity());
			query.setParameter("myDistrict", bean.getMyDistrict());
			query.setParameter("myRoad", bean.getMyRoad());
			query.setParameter("myPlace", bean.getMyPlace());
			query.setParameter("publishPic", bean.getPublishPic());
			query.setParameter("myOwnSkill", bean.getMyOwnSkill());
			query.setParameter("myWantSkill", bean.getMyWantSkill());
			
			Date date = new Date();
			java.sql.Date updateTime = new java.sql.Date(date.getTime());
			query.setParameter("updateTime",updateTime);
			
			query.setParameter("myMark", bean.getMyMark());
			query.setParameter("skillType", bean.getSkillType());
			query.setParameter("skillType2", bean.getSkillType2());
			query.setParameter("publishNo", bean.getPublishNo());
			query.executeUpdate();
			return null;
		}
	}
	@Override
	public List<MyPublishBean> myPublishImformation(int publishNo) {
		Query<MyPublishBean> query = getSession().createQuery("from MyPublishBean where PublishNo = :PublishNo",MyPublishBean.class);
		query.setParameter("PublishNo", publishNo);
		List<MyPublishBean> myPublishBeans = query.list();
		return myPublishBeans;
	}
	
	@Override
	public List<MyPublishBean> publishRecomm(int publishNo,int memberRegNo){
		Query<MyPublishBean> query = getSession().createQuery("select p from MyPublishBean p where p.myOwnSkill in (select ps.myWantSkill from MyPublishBean ps where ps.publishNo = :publishNo) and p.memberRegNo != :memberRegNo",MyPublishBean.class);
		System.out.println("111:"+publishNo+"222:"+memberRegNo);
		query.setParameter("memberRegNo", memberRegNo);
		query.setParameter("publishNo", publishNo);
		List<MyPublishBean> myPublishBeans = query.list();
		System.out.println(myPublishBeans.isEmpty());
		for (MyPublishBean myPublishBean : myPublishBeans) {
			System.out.println("345:"+myPublishBean.getMyTitle());
		}
		
		return myPublishBeans;
	}

}

