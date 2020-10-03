/*
 * bd_num int AI PK 게시판 고유번호
bd_title varchar(100) 게시판 제목
bd_content varchar(500) 게시판 내용
bd_date datetime 생성 일
bd_readcnt varchar(45) 조회수 
bd_mb_num int 작성자 고유번호
bd_mb_name varchar(45) 작성자 이름
bd_del varchar(45) 디폴트0 삭제1
 */
package seon.je.moon.vo;

public class Board {
	private int bd_num;
	private String bd_title;
	private String bd_content;
	private String bd_date;
	private String bd_readcnt;
	private String bd_del;
	public int getBd_num() {
		return bd_num;
	}
	public void setBd_num(int bd_num) {
		this.bd_num = bd_num;
	}
	public String getBd_title() {
		return bd_title;
	}
	public void setBd_title(String bd_title) {
		this.bd_title = bd_title;
	}
	public String getBd_content() {
		return bd_content;
	}
	public void setBd_content(String bd_content) {
		this.bd_content = bd_content;
	}
	public String getBd_date() {
		return bd_date;
	}
	public void setBd_date(String bd_date) {
		this.bd_date = bd_date;
	}
	public String getBd_readcnt() {
		return bd_readcnt;
	}
	public void setBd_readcnt(String bd_readcnt) {
		this.bd_readcnt = bd_readcnt;
	}
	public String getBd_del() {
		return bd_del;
	}
	public void setBd_del(String bd_del) {
		this.bd_del = bd_del;
	}
	@Override
	public String toString() {
		return "Board [bd_num=" + bd_num + ", bd_title=" + bd_title + ", bd_content=" + bd_content + ", bd_date="
				+ bd_date + ", bd_readcnt=" + bd_readcnt 
				+ ", bd_del=" + bd_del + "]";
	}
	
	
}
