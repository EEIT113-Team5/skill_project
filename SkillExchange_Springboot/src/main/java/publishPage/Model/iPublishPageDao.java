package publishPage.Model;

import java.util.List;

import myPublish.Model.MyPublishBean;
import publishCheckPage.Model.PublishBean;

public interface iPublishPageDao {

	List<publishSelectBean> Skill();

	List<publishAreaBean> Area();

	List<publishCityBean> City();
	
	List<PublishBean> allPublish();
	
	PublishBean timeout(int publishNo);

}