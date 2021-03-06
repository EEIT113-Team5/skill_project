package comment.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.github.abel533.echarts.Option;

import comment.bean.BarcharBean;
import comment.bean.CommentBean;
import comment.bean.LChartBean;


public interface CommentDAO {
	void insertComm(CommentBean cb);
	public List<CommentBean> publishComment();
	public List<CommentBean> getAllUserComments();
	int updateUserComm(int commentNo, int stat);	
//	public CommentBean getUserComment();
	public BarcharBean getWebCommentAvg(String year, String mon);
	public List<LChartBean> getLineChart(String year);
	
	
	public List<CommentBean> getAllWebComments();
//	int updateWebComm(CommentBean wb);
	int deleteComm(int id);	
//	public CommentBean getWebCommentW();
    public List<BarcharBean> watchingList(int grade);
    public Integer UpdateMemberStat(Integer memberid, String action);
    public Long SelectExgrading(Integer exgrading);
   //後台
    public Long getTotalMember();
    public Long getTotalExchangenum();
    public Long getTotalActivitynum();
    public Long getMessagenum();
    public List<CommentBean> getBadUser(Integer memCommented, Integer exgrading);
}
