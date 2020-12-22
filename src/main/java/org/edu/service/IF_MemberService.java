package org.edu.service;

import java.util.List;

import org.edu.vo.MemberVO;
import org.edu.vo.PageVO;

/**
 * IF_MemberService클래스는 DAO를 호출하는 역할입니다.
 * @author 뚫어봐
 *
 */
public interface IF_MemberService {
	public int countMember(PageVO pageVO) throws Exception;
	public List<MemberVO> selectMember(PageVO pageVO) throws Exception;
	public MemberVO readMember(String user_id) throws Exception;
	public void deleteMember(String user_id) throws Exception;
	//업데이트 후 member_view.jsp로 이동
	public void updateMember(MemberVO memberVO) throws Exception;
	public void insertMember(MemberVO memberVO) throws Exception;
}

