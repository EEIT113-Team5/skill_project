package search.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import search.dao.CityDao;
import search.model.CityBean;

@Service
@Transactional
@EnableTransactionManagement
public class CityService {

	@Autowired
	CityDao cDao;
	
	public List<CityBean> queryCity(){
		return cDao.queryCity();
	}
}