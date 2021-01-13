package org.edu.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.edu.vo.PageVO;
import org.edu.vo.ReplyVO;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImpl implements IF_ReplyDAO{

	@Inject
	private SqlSession sqlSession;//root-context.xml에서 지정한 sqlSession sql템플릿 빈 사용
	
	@Override
	public List<ReplyVO> selectReply(Integer bno,PageVO pageVO) throws Exception {
		// mapper query연결
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("bno", bno);
		paramMap.put("pageVO", pageVO);
		return sqlSession.selectList("replyMapper.selectReply", paramMap);
	}

	@Override
	public void updateCountReply(Integer bno) throws Exception{
		// mapper query 연결
		sqlSession.update("replyMapper.updateCountReply", bno);
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

	@Override
	public int selectReplyCount(Integer bno) throws Exception {
		// mapper query 연결
		return sqlSession.selectOne("replyMapper.selectReplyCount",bno);
	}

	@Override
	public void deleteReplyAll(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.delete("replyMapper.deleteReplyAll",bno);
	}
}