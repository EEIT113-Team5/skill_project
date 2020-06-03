package publishPage.Model;

import java.util.List;

import publishCheckPage.Model.PublishBean;

public interface iPublishPageDao {

	List<publishSelectBean> Skill();

	List<publishAreaBean> Area();

	List<publishCityBean> City();
	
	List<PublishBean> allPublish();

}