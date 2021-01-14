package org.edu.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.edu.dao.IF_BoardDAO;
import org.edu.dao.IF_ReplyDAO;
import org.edu.vo.AttachVO;
import org.edu.vo.BoardVO;
import org.edu.vo.PageVO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service //스프링빈으로 사용하기 위해서 에노테이션 명시
public class BoardServiceImpl implements IF_BoardService{

	@Inject //댓글 DAO클래스 주입
	private IF_ReplyDAO replyDAO;
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
	public List<AttachVO> readAttach(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.readAttach(bno);
	}
	
	@Override
	public List<HashMap<String,Object>> readAttach_noUse(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return boardDAO.readAttach_noUse(bno);
	}
	
	@Transactional
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		// 게시물 등록 DAO연결(아래)
		boardDAO.insertBoard(boardVO);
		// 첨부파일 등록 DAO연결(아래)
		String[] save_file_names = boardVO.getSave_file_names();
		String[] real_file_names = boardVO.getReal_file_names();
		//첨부파일이 여러개일때 상황 대비
		int index = 0;
		String real_file_name = "";
		if(save_file_names == null) { return; } //첨부파일이 없으면 진행 빠져나감.
		for(String save_file_name:save_file_names) {//첨부파일 1개일때는 1번만 반복됩니다.
			if(save_file_name != null){
				real_file_name = real_file_names[index];
				boardDAO.insertAttach(save_file_name, real_file_name);
			}
			index = index + 1;
		}
	}

	@Transactional
	@Override
	public void deleteBoard(Integer bno) throws Exception {
		// 첨부파일 삭제후 게시물 삭제 DAO연결
		boardDAO.deleteAttachAll(bno);
		replyDAO.deleteReplyAll(bno);
		boardDAO.deleteBoard(bno);
	}

	@Override
	public void updateBoard(BoardVO boardVO) throws Exception {
		// 게시물 수정 DAO연결
		boardDAO.updateBoard(boardVO);
		// 첨부파일 등록 DAO연결 조건은 기존 첨부파일 DB를 삭제한 이후
		Integer bno = boardVO.getBno();
		String[] save_file_names = boardVO.getSave_file_names();
		String[] real_file_names = boardVO.getReal_file_names();
		//첨부파일이 여러개일때 상황 대비
		int index = 0;
		String real_file_name = "";
		if(save_file_names == null) { return; }
		for(String save_file_name:save_file_names) {//첨부파일 1개일때는 1번만 반복됩니다.
			if(save_file_name != null) {
				real_file_name = real_file_names[index];
				boardDAO.updateAttach(save_file_name, real_file_name, bno);
				index = index + 1;
			}
		}
	}
}
