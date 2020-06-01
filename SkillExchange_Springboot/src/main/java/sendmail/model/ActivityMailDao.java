package sendmail.model;

import java.util.List;

import activity.bean.ActivityBean;

public interface ActivityMailDao {

	String getAllMembersEmail();
	
	List<ActivityBean> getAllActivityYesterday();

}