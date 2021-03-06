package comment.service;

import java.util.List;

import org.hibernate.tool.schema.internal.exec.GenerationTarget;

import comment.bean.BarcharBean;
import comment.bean.CommentBean;
import comment.bean.LChartBean;


public interface CommentService {
	void insertComm(CommentBean cb);
	int deleteComm(int wb);	
	public List<CommentBean> publishComment();
	public List<CommentBean> getAllUserComments();
	int updateUserComm(int commentNo, int stat);
//	public CommentBean getUserComment();
	public BarcharBean getWebCommentAvg(String year, String mon);
	public List<LChartBean> getLineChart(String year);
//	
	public List<CommentBean> getAllWebComments();
//	int updateWebComm(CommentBean wb);
//	public CommentBean getWebCommentW();
	 public List<BarcharBean> watchingList(int grade);
	 
	public Integer UpdateMemberStat(Integer memberid, String action);
	public List<Long> SelectExgrading();
	
	//
	public List<Long>  getBackstatistic();
	public List<CommentBean> getBadUser(Integer memCommented, Integer exgrading);
}
