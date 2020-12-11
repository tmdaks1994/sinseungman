package org.edu.vo;

import java.util.Date;

/**
 * 게시판에서 사용되는 데이터 입출력 클래스
 * @author 뚫어봐
 *
 */
public class BoardVO {

	private Integer bno; //int는 입력값이 null일때, 에러가 나오기 때문에, Integer
	private String title;
	private String content;
	private String writer;
	private Date regdate;
	private Date update_date;
	private Integer view_count;
	private Integer reply_count;
	
	
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", writer=" + writer + ", regdate=" + regdate
				+ ", update_date=" + update_date + ", view_count=" + view_count + ", reply_count=" + reply_count + "]";
	}	
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public Integer getView_count() {
		return view_count;
	}
	public void setView_count(Integer view_count) {
		this.view_count = view_count;
	}
	public Integer getReply_count() {
		return reply_count;
	}
	public void setReply_count(Integer reply_count) {
		this.reply_count = reply_count;
	}
}
