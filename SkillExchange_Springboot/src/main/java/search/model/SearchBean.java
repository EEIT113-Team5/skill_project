package search.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "Publish")
public class SearchBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private String memberNic;
	private String memberPic;
	private String keyword;
	private int publishNo;
	private int memberRegNo;
	private String publishTitle;
	private String publishDetail;
	private String publishArea;
	private String city;
	private String district;
	private String road;
	private String publishPlace;
	private String publishPic;
	private String ownSkill;
	private String wantSkill;
	private Date updateTime;
	private int publishCTR;
	private String publishMark;
	private String status;
	private String ownType;
	private String wantType;

	// create for multiple choices
	private String area1;
	private String area2;
	private String area3;
	private String city1;
	private String city2;
	private String city3;
	private String city4;
	private String city5;
	private String type1;
	private String type2;
	private String type3;
	private String type4;
	private String skill1;
	private String skill2;
	private String skill3;
	private String skill4;
	private String skill5;
	private String dateSort;
	private String clickSort;

	public SearchBean(String memberNic, String memberPic, int publishNo, int memberRegNo, String publishTitle, String publishDetail,
			String publishArea, String city, String district, String road, String publishPlace, String publishPic,
			String ownSkill, String wantSkill, Date updateTime, int publishCTR, String publishMark, String status, String ownType, String wantType) {
		this.memberNic = memberNic;
		this.memberPic = memberPic;
		this.publishNo = publishNo;
		this.memberRegNo = memberRegNo;
		this.publishTitle = publishTitle;
		this.publishDetail = publishDetail;
		this.publishArea = publishArea;
		this.city = city;
		this.district = district;
		this.road = road;
		this.publishPlace = publishPlace;
		this.publishPic = publishPic;
		this.ownSkill = ownSkill;
		this.wantSkill = wantSkill;
		this.updateTime = updateTime;
		this.publishCTR = publishCTR;
		this.publishMark = publishMark;
		this.status = status;
		this.ownType = ownType;
		this.wantType = wantType;
	}

	public SearchBean(String keyword, String publishArea, String ownSkill) {
		this.keyword = keyword;
		this.publishArea = publishArea;
		this.ownSkill = ownSkill;
	}

	public SearchBean() {
	}

	// create for multiple choices
	public SearchBean(String keyword, String area1, String area2, String area3, String city1, String city2,
			String city3, String city4, String city5, String type1, String type2, String type3, String type4,
			String skill1, String skill2, String skill3, String skill4, String skill5) {
		super();
		this.keyword = keyword;
		this.area1 = area1;
		this.area2 = area2;
		this.area3 = area3;
		this.city1 = city1;
		this.city2 = city2;
		this.city3 = city3;
		this.city4 = city4;
		this.city5 = city5;
		this.type1 = type1;
		this.type2 = type2;
		this.type3 = type3;
		this.type4 = type4;
		this.skill1 = skill1;
		this.skill2 = skill2;
		this.skill3 = skill3;
		this.skill4 = skill4;
		this.skill5 = skill5;
	}
	
	public SearchBean(String keyword, String area1, String area2, String area3, String city1, String city2,
			String city3, String city4, String city5, String type1, String type2, String type3, String type4,
			String skill1, String skill2, String skill3, String skill4, String skill5, String dateSort,
			String clickSort) {
		super();
		this.keyword = keyword;
		this.area1 = area1;
		this.area2 = area2;
		this.area3 = area3;
		this.city1 = city1;
		this.city2 = city2;
		this.city3 = city3;
		this.city4 = city4;
		this.city5 = city5;
		this.type1 = type1;
		this.type2 = type2;
		this.type3 = type3;
		this.type4 = type4;
		this.skill1 = skill1;
		this.skill2 = skill2;
		this.skill3 = skill3;
		this.skill4 = skill4;
		this.skill5 = skill5;
		this.dateSort = dateSort;
		this.clickSort = clickSort;
	}

	@Transient
	public String getMemberNic() {
		return memberNic;
	}

	public void setMemberNic(String memberNic) {
		this.memberNic = memberNic;
	}
	
	@Transient
	public String getMemberPic() {
		return memberPic;
	}

	public void setMemberPic(String memberPic) {
		this.memberPic = memberPic;
	}

	@Transient
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Id
	@Column(name = "publishno")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getPublishNo() {
		return publishNo;
	}

	public void setPublishNo(int publishNo) {
		this.publishNo = publishNo;
	}

	@Column(name = "memberRegNo")
	public int getMemberRegNo() {
		return memberRegNo;
	}

	public void setMemberRegNo(int memberRegNo) {
		this.memberRegNo = memberRegNo;
	}

	@Column(name = "publishTitle")
	public String getPublishTitle() {
		return publishTitle;
	}

	public void setPublishTitle(String publishTitle) {
		this.publishTitle = publishTitle;
	}

	@Column(name = "publishDetail")
	public String getPublishDetail() {
		return publishDetail;
	}

	public void setPublishDetail(String publishDetail) {
		this.publishDetail = publishDetail;
	}

	@Column(name = "publishArea")
	public String getPublishArea() {
		return publishArea;
	}

	public void setPublishArea(String publishArea) {
		this.publishArea = publishArea;
	}

	@Column(name = "city")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "publishPic")
	public String getPublishPic() {
		return publishPic;
	}

	public void setPublishPic(String publishPic) {
		this.publishPic = publishPic;
	}

	@Column(name = "ownSkill")
	public String getOwnSkill() {
		return ownSkill;
	}

	public void setOwnSkill(String ownSkill) {
		this.ownSkill = ownSkill;
	}

	@Column(name = "wantSkill")
	public String getWantSkill() {
		return wantSkill;
	}

	public void setWantSkill(String wantSkill) {
		this.wantSkill = wantSkill;
	}

	@Column(name = "updateTime")
	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	@Column(name = "status")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "district")
	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	@Column(name = "road")
	public String getRoad() {
		return road;
	}

	public void setRoad(String road) {
		this.road = road;
	}

	@Column(name = "publishPlace")
	public String getPublishPlace() {
		return publishPlace;
	}

	public void setPublishPlace(String publishPlace) {
		this.publishPlace = publishPlace;
	}

	@Column(name = "publishCTR")
	public int getPublishCTR() {
		return publishCTR;
	}

	public void setPublishCTR(int publishCTR) {
		this.publishCTR = publishCTR;
	}

	@Column(name = "publishMark")
	public String getPublishMark() {
		return publishMark;
	}

	public void setPublishMark(String publishMark) {
		this.publishMark = publishMark;
	}
	
	@Column(name = "skillType2")
	public String getOwnType() {
		return ownType;
	}

	public void setOwnType(String ownType) {
		this.ownType = ownType;
	}

	@Column(name = "skillType")
	public String getWantType() {
		return wantType;
	}

	public void setWantType(String wantType) {
		this.wantType = wantType;
	}

	@Transient
	public String getArea1() {
		return area1;
	}

	public void setArea1(String area1) {
		this.area1 = area1;
	}

	@Transient
	public String getArea2() {
		return area2;
	}

	public void setArea2(String area2) {
		this.area2 = area2;
	}

	@Transient
	public String getArea3() {
		return area3;
	}

	public void setArea3(String area3) {
		this.area3 = area3;
	}

	@Transient
	public String getCity1() {
		return city1;
	}

	public void setCity1(String city1) {
		this.city1 = city1;
	}

	@Transient
	public String getCity2() {
		return city2;
	}

	public void setCity2(String city2) {
		this.city2 = city2;
	}

	@Transient
	public String getCity3() {
		return city3;
	}

	public void setCity3(String city3) {
		this.city3 = city3;
	}

	@Transient
	public String getCity4() {
		return city4;
	}

	public void setCity4(String city4) {
		this.city4 = city4;
	}

	@Transient
	public String getCity5() {
		return city5;
	}

	public void setCity5(String city5) {
		this.city5 = city5;
	}

	@Transient
	public String getType1() {
		return type1;
	}

	public void setType1(String type1) {
		this.type1 = type1;
	}

	@Transient
	public String getType2() {
		return type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

	@Transient
	public String getType3() {
		return type3;
	}

	public void setType3(String type3) {
		this.type3 = type3;
	}

	@Transient
	public String getType4() {
		return type4;
	}

	public void setType4(String type4) {
		this.type4 = type4;
	}

	@Transient
	public String getSkill1() {
		return skill1;
	}

	public void setSkill1(String skill1) {
		this.skill1 = skill1;
	}

	@Transient
	public String getSkill2() {
		return skill2;
	}

	public void setSkill2(String skill2) {
		this.skill2 = skill2;
	}

	@Transient
	public String getSkill3() {
		return skill3;
	}

	public void setSkill3(String skill3) {
		this.skill3 = skill3;
	}

	@Transient
	public String getSkill4() {
		return skill4;
	}

	public void setSkill4(String skill4) {
		this.skill4 = skill4;
	}

	@Transient
	public String getSkill5() {
		return skill5;
	}

	public void setSkill5(String skill5) {
		this.skill5 = skill5;
	}

	@Transient
	public String getDateSort() {
		return dateSort;
	}

	public void setDateSort(String dateSort) {
		this.dateSort = dateSort;
	}

	@Transient
	public String getClickSort() {
		return clickSort;
	}

	public void setClickSort(String clickSort) {
		this.clickSort = clickSort;
	}
}