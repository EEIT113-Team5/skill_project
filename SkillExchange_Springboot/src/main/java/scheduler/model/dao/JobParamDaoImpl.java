package scheduler.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import scheduler.model.JobParam;

@Repository
@Transactional
public class JobParamDaoImpl implements JobParamDao {
	@Autowired
	SessionFactory factory;

	public Session getSession() {
		return factory.getCurrentSession();
	}

	@Override
	public List<JobParam> getJobParam() {
		String hql = "from JobParam where jobStatus = 1";
		Query<JobParam> query = getSession().createQuery(hql);
		List<JobParam> list = query.list();
		return list;
	}

	@Override
	public JobParam getJobParamByNo(Integer jobNo) {
		JobParam jobParam = getSession().get(JobParam.class,jobNo);
		return jobParam;
	}

	@Override
	public void updateJobParam(String cronExpression,Integer jobNo) {
		String hql="update JobParam set cronExpression = :cronExpression,updateTime = GETDATE() where jobNo = :jobNo";
		Query query = getSession().createQuery(hql);
		query.setParameter("cronExpression", cronExpression);
		query.setParameter("jobNo", jobNo);
		query.executeUpdate();
	}

}