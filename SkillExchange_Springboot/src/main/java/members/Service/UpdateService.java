package members.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import members.Model.MemberBean;
import members.Model.MemberDao;

@Service
@Transactional
@EnableTransactionManagement
public class UpdateService {
	
	@Autowired
	private MemberDao mbDao;
	
	public MemberBean getAcc(String memberAcc) {
		
		MemberBean mb = mbDao.selectAcc(memberAcc);
		
		return mb;
	}
	

}
