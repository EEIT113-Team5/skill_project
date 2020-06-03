package search.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import search.model.KeywordBean;
import search.model.SearchBean;

@Repository
public class KeywordDao {
	@Autowired
	SessionFactory factory;

	public Session getSession() {
		return factory.getCurrentSession();
	}

	public boolean insertKeyword(KeywordBean kbean) {
		getSession().save(kbean);
		if (kbean != null) {
			return true;
		}
		return false;
	}

	public List<SearchBean> queryResult(String keyword, String area1, String area2, String area3, String city1,
			String city2, String city3, String city4, String city5, String type1, String type2, String type3,
			String type4, String skill1, String skill2, String skill3, String skill4, String skill5) {
		String hql1, hql2, hql3, hql4, hql5;

		System.out.println("area1=" + area1);
		System.out.println("city1=" + city1);
		System.out.println("type1=" + type1);
		System.out.println("skill1=" + skill1);
		System.out.println("keyword=" + keyword);

		if (area1 == null) {
			hql1 = "";
		} else if (area1 != "") {
			if (area2 != "") {
				if (area3 != "") {
					hql1 = " and (S.publishArea = :a1 or :a2 or :a3)";
				} else {
					hql1 = " and (S.publishArea = :a1 or :a2)";
				}
			} else {
				hql1 = " and S.publishArea = :a1";
			}
		} else {
			hql1 = "";
		}

		if (city1 == null) {
			hql2 = "";
		} else if (city1 != "") {
			if (city2 != "") {
				if (city3 != "") {
					if (city4 != "") {
						if (city5 != "") {
							hql2 = " and (S.city = :c1 or :c2 or :c3 or :c4 or :c5)";
						} else {
							hql2 = " and (S.city = :c1 or :c2 or :c3 or :c4)";
						}
					} else {
						hql2 = " and (S.city = :c1 or :c2 or :c3)";
					}
				} else {
					hql2 = " and (S.city = :c1 or :c2)";
				}
			} else {
				hql2 = " and S.city = :c1";
			}
		} else {
			hql2 = "";
		}

		if (type1 == null) {
			hql3 = "";
		} else if (type1 != "") {
			if (type2 != "") {
				if (type3 != "") {
					if (type4 != "") {
						hql3 = " and ((S.wantType = :t1 or :t2 or :t3 or :t4) or (S.ownType = :t1 or :t2 or :t3 or :t4))";
					} else {
						hql3 = " and ((S.wantType = :t1 or :t2 :t3) or (S.ownType = :t1 or :t2 or :t3))";
					}
				} else {
					hql3 = " and ((S.wantType = :t1 or :t2) or (S.ownType = :t1 or :t2))";
				}
			} else {
				hql3 = " and ((S.wantType = :t1) or (S.ownType = :t1))";
			}
		} else {
			hql3 = "";
		}

		if (skill1 == null) {
			hql4 = "";
		} else if (skill1 != "") {
			if (skill2 != "") {
				if (skill3 != "") {
					if (skill4 != "") {
						if (skill5 != "") {
							hql4 = " and ((S.wantSkill = :s1 or :s2 or :s3 or :s4 or :s5) or (S.ownSkill = :s1 or :s2 or :s3 or :s4 or :s5))";
						} else {
							hql4 = " and ((S.wantSkill = :s1 or :s2 or :s3 or :s4) or (S.ownSkill = :s1 or :s2 or :s3 or :s4))";
						}
					} else {
						hql4 = " and ((S.wantSkill = :s1 or :s2 or :s3) or (S.ownSkill = :s1 or :s2 or :s3))";
					}
				} else {
					hql4 = " and ((S.wantSkill = :s1 or :s2) or (S.ownSkill = :s1 or :s2))";
				}
			} else {
				hql4 = "and ((S.wantSkill = :s1) or (S.ownSkill = :s1))";
			}
		} else {
			hql4 = "";
		}

		if (keyword != "") {
			hql5 = " and S.publishTitle like :k1";
		} else {
			hql5 = "";
		}

		String hql = "select new SearchBean(M.memberNic, S.publishNo, S.memberRegNo, S.publishTitle, S.publishDetail, S.publishArea, S.city, S.district, S.road, S.publishPlace, S.publishPic, S.ownSkill, S.wantSkill, S.updateTime, S.publishCTR, S.publishMark, S.status, S.ownType, S.wantType) from SearchBean S, MemberBean M where S.memberRegNo = M.memberRegNo and S.status='1'"
				+ hql1 + hql2 + hql3 + hql4 + hql5;

		System.out.println("hql=" + hql);

		@SuppressWarnings("unchecked")
		Query<SearchBean> query = getSession().createQuery(hql);
		if (area1 != "" && area1 != null) {
			query.setParameter("a1", area1);
		}

		if (area2 != "" && area2 != null) {
			query.setParameter("a2", area2);
		}

		if (area3 != "" && area3 != null) {
			query.setParameter("a3", area3);
		}

		if (city1 != "" && city1 != null) {
			query.setParameter("c1", city1);
		}

		if (city2 != "" && city2 != null) {
			query.setParameter("c2", city2);
		}

		if (city3 != "" && city3 != null) {
			query.setParameter("c3", city3);
		}

		if (city4 != "" && city4 != null) {
			query.setParameter("c4", city4);
		}

		if (city5 != "" && city5 != null) {
			query.setParameter("c5", city5);
		}

		if (type1 != "" && type1 != null) {
			query.setParameter("t1", type1);
		}

		if (type2 != "" && type2 != null) {
			query.setParameter("t2", type2);
		}

		if (type3 != "" && type3 != null) {
			query.setParameter("t3", type3);
		}

		if (type4 != "" && type4 != null) {
			query.setParameter("t4", type4);
		}

		if (skill1 != "" && skill1 != null) {
			query.setParameter("s1", skill1);
		}

		if (skill2 != "" && skill2 != null) {
			query.setParameter("s2", skill2);
		}

		if (skill3 != "" && skill3 != null) {
			query.setParameter("s3", skill3);
		}

		if (skill4 != "" && skill4 != null) {
			query.setParameter("s4", skill4);
		}

		if (skill5 != "" && skill5 != null) {
			query.setParameter("s5", skill5);
		}

		if (keyword != "") {
			query.setParameter("k1", "%" + keyword + "%");
		}

		List<SearchBean> allSearch = query.list();
		return allSearch;
//		return null;

//		>>old expression<<
//		String s1 = area;
//		String s2 = skill;
//		String s3 = keyword;
//		if (s1 != null) {
//			hql1 = " and S.publishArea = :publishArea";
//		} else {
//			hql1 = "";
//		}
//
//		if (s2 != null) {
//			hql2 = " and S.ownSkill = :ownSkill";
//		} else {
//			hql2 = "";
//		}
//
//		if (s3 != "") {
//			hql3 = " and S.publishTitle like :publishTitle";
//		} else {
//			hql3 = "";
//		}
//		String hql = "select new SearchBean(M.memberNic, S.publishNo, S.memberRegNo, S.publishTitle, S.publishDetail, S.publishArea, S.city, S.district, S.road, S.publishPlace, S.publishPic, S.ownSkill, S.wantSkill, S.updateTime, S.publishCTR, S.publishMark, S.status) from SearchBean S, MemberBean M where S.memberRegNo = M.memberRegNo and S.status='1'"
//				+ hql1 + hql2 + hql3;

//		System.out.println("s1=" + s1 + ", s2=" + s2 + ", s3=" + s3);
//		System.out.println(hql);
//		if (s1 != null) {
//			query.setParameter("publishArea", s1);
//		}
//
//		if (s2 != null) {
//			query.setParameter("ownSkill", s2);
//		}
//
//		if (s3 != "") {
//			query.setParameter("publishTitle", "%" + s3 + "%");
//		}
	}

	public List<KeywordBean> queryTopKeyword() {
		String hql = "select keyWord, count(keyWord) as subTotal from KeywordBean group by keyWord order by subTotal desc";

		@SuppressWarnings("unchecked")
		Query<KeywordBean> query = getSession().createQuery(hql);
		List<KeywordBean> topKeyword = query.setMaxResults(10).list();

		return topKeyword;
	}
}