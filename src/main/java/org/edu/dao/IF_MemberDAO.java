package org.edu.dao;

import java.util.List;

import org.edu.vo.MemberVO;

/**
 * 회원관리 DAO 메소드 명세
 * @author 뚫어봐
 *
 */
public interface IF_MemberDAO {
	public List<MemberVO> selectMember() throws Exception;
}
