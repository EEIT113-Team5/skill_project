package search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import search.dao.KeywordDao;
import search.model.KeywordBean;
import search.model.SearchBean;

@Service
@Transactional
@EnableTransactionManagement
public class KeywordService {
	@Autowired
	KeywordDao kDao;

	public boolean insertKeyword(KeywordBean kbean) {
		return kDao.insertKeyword(kbean);
	}

	public List<SearchBean> queryResult(String keyword, String area1, String area2, String area3,
			String city1, String city2, String city3, String city4, String city5, String type1, String type2,
			String type3, String type4, String skill1, String skill2, String skill3, String skill4,
			String skill5) {
		return kDao.queryResult(keyword, area1, area2, area3, city1, city2, city3, city4, city5, type1, type2,
				type3, type4, skill1, skill2, skill3, skill4, skill5);
	}
	
	public List<SearchBean> queryResult2(String keyword, String area1, String area2, String area3,
			String city1, String city2, String city3, String city4, String city5, String type1, String type2,
			String type3, String type4, String skill1, String skill2, String skill3, String skill4,
			String skill5, String dateSort, String clickSort) {
		return kDao.queryResult2(keyword, area1, area2, area3, city1, city2, city3, city4, city5, type1, type2,
				type3, type4, skill1, skill2, skill3, skill4, skill5, dateSort, clickSort);
	}

	public List<KeywordBean> queryTopKeyword() {
		return kDao.queryTopKeyword();
	}
}