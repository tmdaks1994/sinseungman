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
	public List<MemberVO> selectMember(PageVO pageVO) throws Exception;
}
