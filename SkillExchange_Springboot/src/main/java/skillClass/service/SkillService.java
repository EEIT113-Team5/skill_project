package skillClass.service;

import java.time.LocalDateTime;
import java.util.List;

import skillClass.model.ChatRequest;
import skillClass.model.Publish;

public interface SkillService {

	List<Publish> QuerySkills(String skillType);
	List<Publish> allskill();
	List<Publish> detailQuery(Integer PublishNo);
	boolean CTRUpdate(Integer PublishNo);
//	boolean LogUpdate(Integer sendNo,Integer receiveNo,String sendUser,String toUser) ;
	public ChatRequest InsertChatReq(ChatRequest cr);
	public List<ChatRequest> selectChatReq(Integer receiveNo, Integer publishNo);
}