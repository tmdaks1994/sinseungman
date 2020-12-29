package org.edu.service;

import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_BoardDAO;
import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Service;

@Service //스프링빈으로 사용하기 위해서 에노테이션 명시
public class BoardServiceImpl implements IF_BoardService{

	@Inject //DAO클래스를 주입받아서 사용변수 생성
	private IF_BoardDAO boardDAO;
	
	@Override
	public List<BoardVO> selectBoard(PageVO pageVO) throws Exception {
		// DAO클래스 사용코드
		return boardDAO.selectBoard(pageVO);
	}

	@Override
	public int countBoard(PageVO pageVO) throws Exception {
		// DAO클래스 사용코드
		return boardDAO.countBoard(pageVO);
	}

	@Override
	public BoardVO readBoard(Integer bno) throws Exception {
		// bno번호에 해당하는 게시물 조회query DAO연결 + 해당게시물 조회 수 업데이트
		boardDAO.updateViewCount(bno);
		return boardDAO.readBoard(bno);
	}

	@Override
	public List<String> readAttach(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.readAttach(bno);
	}
	
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		// 게시물 등록 DAO연결(아래)
		boardDAO.insertBoard(boardVO);
	}

	@Override
	public void deleteBoard(Integer bno) throws Exception {
		// 게시물 삭제 DAO연결
		boardDAO.deleteBoard(bno);
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		// 게시물 수정 DAO연결
		boardDAO.updateBoard(boardVO);
	}
}
