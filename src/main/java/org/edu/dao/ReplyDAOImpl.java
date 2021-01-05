package org.edu.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.ReplyVO;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImpl implements IF_ReplyDAO{

	@Inject
	private SqlSession sqlSession;//root-context.xml에서 지정한 sqlSession sql템플릿 빈 사용
	
	@Override
	public List<ReplyVO> selectReply(Integer bno) throws Exception {
		// mapper query연결
		return sqlSession.selectList("replyMapper.selectReply",bno);
	}

	@Override
	public int countReply(Integer bno) throws Exception{
		// mapper query 연결
		return sqlSession.selectOne("replyMapper.countReply", bno);
	}

	@Override
	public void insertReply(ReplyVO replyVO) throws Exception {
		// mapper query 연결
		sqlSession.insert("replyMapper.insertReply", replyVO);
	}

	@Override
	public void updateReply(ReplyVO replyVO) throws Exception {
		// mapper query 연결
		sqlSession.update("replyMapper.updateReply", replyVO);
	}

	@Override
	public void deleteReply(Integer rno) throws Exception{
		// mapper query 연결
		sqlSession.delete("replyMapper.deleteReply", rno);
	}
}
