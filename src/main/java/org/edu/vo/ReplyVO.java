package org.edu.vo;

import java.util.Date;

/**
 * ReplyVO클래스는 댓글의 데이터 입출력을 담당하는 데이터 클래스
 * @author 뚫어봐
 *
 */
public class ReplyVO {
	//멤버변수 생성(아래)
	private Integer rno;//댓글 고유번호
	private Integer bno;//부모게시글 번호
	private String reply_text;//댓글내용
	private String replyer;//댓글작성자
	private Date reg_date;//댓글등록일
	private Date update_date;//댓글수정일
	
	@Override
	public String toString() {
		return "ReplyVO [rno=" + rno + ", bno=" + bno + ", reply_text=" + reply_text + ", replyer=" + replyer
				+ ", reg_date=" + reg_date + ", update_date=" + update_date + "]";
	}

	public Integer getRno() {
		return rno;
	}

	public void setRno(Integer rno) {
		this.rno = rno;
	}

	public Integer getBno() {
		return bno;
	}

	public void setBno(Integer bno) {
		this.bno = bno;
	}

	public String getReply_text() {
		return reply_text;
	}

	public void setReply_text(String reply_text) {
		this.reply_text = reply_text;
	}

	public String getReplyer() {
		return replyer;
	}

	public void setReplyer(String replyer) {
		this.replyer = replyer;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public Date getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	
}
