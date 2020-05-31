package skillClass.dao;

import java.time.LocalDateTime;
import java.util.List;

import skillClass.model.Chat;
import skillClass.model.Publish;

public interface SkillDao {

	List<Publish> skillQuery(String skillType);
	List<Publish> allskill();
	List<Publish> detailQuery(Integer PublishNo);
	List<Chat> LogQuery(String sendUser);
	boolean CTRUpdate(Integer PublishNo);
	boolean LogUpdate(Integer sendNo,Integer receiveNo,String sendUser,String toUser,String ChatLog,LocalDateTime LogTime);
}