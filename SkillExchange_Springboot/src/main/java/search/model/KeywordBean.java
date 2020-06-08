package search.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Component
@Entity
@Table(name = "Keyword")
public class KeywordBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int num;
	private String keyWord;
	private Timestamp createDate;
	
	public KeywordBean(String keyWord, Timestamp createDate) {
		this.keyWord = keyWord;
		this.createDate = createDate;
	}
	
	public KeywordBean(int num, String keyWord, Timestamp createDate) {
		super();
		this.num = num;
		this.keyWord = keyWord;
		this.createDate = createDate;
	}
	
	public KeywordBean() {
	}

	@Id @Column(name = "num")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	@Column(name = "keyWord")
	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	@Column(name = "createDate")
	public Timestamp getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
}