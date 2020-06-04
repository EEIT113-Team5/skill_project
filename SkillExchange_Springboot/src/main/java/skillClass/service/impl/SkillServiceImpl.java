package skillClass.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import skillClass.dao.SkillDao;
import skillClass.model.ChatRequest;
import skillClass.model.Publish;
import skillClass.model.Skill2;
import skillClass.service.SkillService;

@Transactional
@Service
public class SkillServiceImpl implements SkillService {
	SkillDao skillDao;
	
	@Autowired
	public void setSkillDao(SkillDao skillDao) {
		this.skillDao=skillDao;		
	}
	
	@Override
	public List<Publish> QuerySkills(String skillType) {
		return skillDao.skillQuery(skillType);
	}
	@Override
	public List<Publish> allskill() {
		return skillDao.allskill();
	}
	@Override
	public List<Publish> detailQuery(Integer PublishNo) {
		return skillDao.detailQuery(PublishNo);
	}
	@Override
	public boolean CTRUpdate(Integer PublishNo) {
		return skillDao.CTRUpdate(PublishNo);
	}
	@Override
	public boolean ClassCTRUpdate(String skillType) {
		return skillDao.ClassCTRUpdate(skillType);
	}
	
	//對話框
	@Override
	public ChatRequest InsertChatReq(ChatRequest cr) {
		// TODO Auto-generated method stub
		return skillDao.InsertChatReq(cr);
	}

	@Override
	public List<ChatRequest> selectChatReq(Integer receiveNo, Integer publishNo) {
		// TODO Auto-generated method stub
		return skillDao.selectChatReq(receiveNo, publishNo);
	}
	@Override
	public List<Skill2> GetBackendCTR(){		
		return skillDao.GetBackendCTR();
	}
//	@Override
//	public boolean LogUpdate(Integer sendNo,Integer receiveNo,String sendUser,String toUser) {
//		
//		return skillDao.LogUpdate(sendNo,receiveNo,sendUser,toUser);
//	}
}
