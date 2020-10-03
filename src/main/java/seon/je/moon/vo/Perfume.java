/*
 * pf_num int AI PK 
pf_image varchar(333) 이미지
pf_title varchar(100) 향수제목
pf_content varchar(500) 향수설명
pf_state varchar(45) 디폴트0 0이면 전체 1이면 어떤카테고리의 향수뭐이런식으로
pf_del varchar(45) 디폴트0 삭제 1
pf_mb_name varchar(45) 작성자 이름
pf_mb_id varchar(45) 작성자의 고유번호
 */
package seon.je.moon.vo;

public class Perfume {
	private int pf_num;
	private String pf_image;
	private String pf_title;
	private String pf_content;
	private String pf_state;
	private String pf_del;
	private String pf_mb_name;
	private int pf_mb_id;
	public int getPf_num() {
		return pf_num;
	}
	public void setPf_num(int pf_num) {
		this.pf_num = pf_num;
	}
	public String getPf_image() {
		return pf_image;
	}
	public void setPf_image(String pf_image) {
		this.pf_image = pf_image;
	}
	public String getPf_title() {
		return pf_title;
	}
	public void setPf_title(String pf_title) {
		this.pf_title = pf_title;
	}
	public String getPf_content() {
		return pf_content;
	}
	public void setPf_content(String pf_content) {
		this.pf_content = pf_content;
	}
	public String getPf_state() {
		return pf_state;
	}
	public void setPf_state(String pf_state) {
		this.pf_state = pf_state;
	}
	public String getPf_del() {
		return pf_del;
	}
	public void setPf_del(String pf_del) {
		this.pf_del = pf_del;
	}
	public String getPf_mb_name() {
		return pf_mb_name;
	}
	public void setPf_mb_name(String pf_mb_name) {
		this.pf_mb_name = pf_mb_name;
	}
	public int getPf_mb_id() {
		return pf_mb_id;
	}
	public void setPf_mb_id(int pf_mb_id) {
		this.pf_mb_id = pf_mb_id;
	}
	@Override
	public String toString() {
		return "Perfume [pf_num=" + pf_num + ", pf_image=" + pf_image + ", pf_title=" + pf_title + ", pf_content="
				+ pf_content + ", pf_state=" + pf_state + ", pf_del=" + pf_del + ", pf_mb_name=" + pf_mb_name
				+ ", pf_mb_id=" + pf_mb_id + "]";
	}
	
	
}
