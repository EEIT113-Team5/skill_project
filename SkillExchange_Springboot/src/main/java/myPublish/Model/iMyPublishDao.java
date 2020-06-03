package myPublish.Model;

import java.util.List;

public interface iMyPublishDao {

	List<MyPublishBean> myPublish(int memberRegNo);

	boolean myPubDele(int myPubNo);

	MyPublishBean selUpdatePublish(int myPubNo);

	MyPublishBean datePublish(MyPublishBean bean);

	List<MyPublishBean> myPublishImformation(int publishNo);
	
	List<MyPublishBean> publishRecomm(int publishNo,int memberRegNo);
	
	public MyPublishBean myPubStatus(MyPublishBean bean);
	
	List<MyPublishBean> myPublishHistory(int memberRegNo);
	
	MyPublishBean myPublishAgain(MyPublishBean bean);

}