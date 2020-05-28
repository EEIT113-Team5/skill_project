package search.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import search.model.CityBean;

@Repository
public class CityDao {
	@Autowired
	SessionFactory factory;
	
	public Session getSession() {
		return factory.getCurrentSession();
	}
	
	public List<CityBean> queryCity(){
		String hql = "select new CityBean(C.num, C.cityCN, C.publishAreaID, A.publishAreaCN) from CityBean C, AreaBean A where C.publishAreaID = A.publishAreaCode order by C.num";
		
		@SuppressWarnings("unchecked")
//		Query<CityBean> query = getSession().createQuery("from CityBean");
		Query<CityBean> query = getSession().createQuery(hql);
		List<CityBean> allcities = query.list();
		
		return allcities;
	}
}