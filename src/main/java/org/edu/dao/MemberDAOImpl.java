package org.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.MemberVO;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements IF_MemberDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<MemberVO> selectMember() throws Exception {
		// mapper.xml에 접근하는 방법
		return sqlSession.selectList("memberMapper.selectMember");
		//sqlSession템플릿의 selectList 메소드를 실행하면, memberMapper,selectmember
	}
}
