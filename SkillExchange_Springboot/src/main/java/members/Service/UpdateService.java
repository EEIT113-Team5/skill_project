package members.Service;

import java.text.ParseException;

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
	
	public MemberBean getByRegNo(Integer memberRegNo) {
		MemberBean mb = mbDao.selectByRegNo(memberRegNo);
		return mb;
	}
	
	public int updatePart(MemberBean mbean) throws Exception, ParseException {
		return mbDao.updatePart(mbean);
	}
}
