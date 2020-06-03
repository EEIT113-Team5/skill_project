package publishPage.Service;

import java.util.List;

import publishCheckPage.Model.PublishBean;
import publishPage.Model.publishAreaBean;
import publishPage.Model.publishCityBean;
import publishPage.Model.publishSelectBean;

public interface iPublishPageService {

	List<publishSelectBean> Skill();

	List<publishAreaBean> Area();

	List<publishCityBean> City();

	List<PublishBean> allPublish();
}