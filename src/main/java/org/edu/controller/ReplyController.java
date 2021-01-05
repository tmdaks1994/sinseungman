package org.edu.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.edu.dao.IF_ReplyDAO;
import org.edu.vo.ReplyVO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * ReplyController.java 클래스
 * 댓글 구현 Rest-API전용 컨트롤러=RestAPI서버
 * @author 뚫어봐
 *
 */
@RestController
public class ReplyController {
	
	@Inject
	private IF_ReplyDAO replyDAO;
	//댓글 리스트 메서드
	@RequestMapping(value="/reply/reply_list/{bno}", method=RequestMethod.POST)
	public ResponseEntity<Map<String,Object>> reply_list(@PathVariable("bno") Integer bno) {
		System.out.println("번호 : " + bno);
		ResponseEntity<Map<String,Object>> result = null;
		
		ReplyVO replyVO = new ReplyVO();
		String replyRead = replyVO.toString();
		
		Map<String,Object> resultMap = new HashMap<String,Object>();//해시맵타입으로 Json저장소생성
		//Map변수=데이터형 [{'key':'List<>'},{'key':'ClassVO'},{'':''},...]
		//{"replyList":[{"reply_text":"1댓글 입력 테스트 입니다.","replyer":"관리자"},
		//             {"reply_text":"2댓글 입력 테스트 입니다.","replyer":"관리자"}]
		//}
		Map<String,Object> dummyMap1 = new HashMap<String,Object>();
		dummyMap1.put("rno", "1");
		dummyMap1.put("replyer", "관리자");
		dummyMap1.put("reply_text", "댓글1.");
		
		Map<String,Object> dummyMap2 = new HashMap<String,Object>();
		dummyMap2.put("rno", "2");
		dummyMap2.put("replyer", "관리자2");
		dummyMap2.put("reply_text", "댓글2.");
		
		List<Object> dummyMapList = new ArrayList<Object>();
		dummyMapList.add(0, dummyMap1);
		dummyMapList.add(1, dummyMap2);

		//resultMap.put("replyList", dummyMapList); //put메서드로 Key:Value 제이슨데이터 생성
		
		try {
			List<ReplyVO> replyList = replyDAO.selectReply(bno);
			if(replyList.isEmpty()) {
				//result = null;//jsp에서 받는 값이 text 일때 적용
				result = new ResponseEntity<Map<String,Object>>(resultMap,HttpStatus.NO_CONTENT);//코드204
			}else{
				resultMap.put("replyList", replyList);
				//resultMap를 Json데이터로 반환하려면, jackson-databind 모듈이 필수(pom.xml)
				result = new ResponseEntity<Map<String,Object>>(resultMap,HttpStatus.OK);
			}
		} catch (Exception e) {
			result = new ResponseEntity<Map<String,Object>>(HttpStatus.INTERNAL_SERVER_ERROR);//코드500
		}
		
		return result;
	}
		
	//댓글 입력 매서드(아래)
	@RequestMapping(value="/reply/reply_write", method=RequestMethod.POST)
	public ResponseEntity<String> reply_write() {
		ResponseEntity<String> responseEntity = 
				new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		//ResponseEntity는 json텍스트를 반환하는데, 전송내용:"SUCCESS", 전송상태-HttpStatus.OK(200)
		//전송내용:e.getMessage()실패메세지값, 전송상태-HttpStatus.BAD_REQUEST(400)
		return responseEntity;
	}
	//기존 @Controller의 메서드 반환값은 파일위치, 대신에 @RestController의
	//위 메서드의 반환값 ResponseEntity는 json텍스트(전송내용, 전송상태값)로서 Ajax로 호출한 jsp로 리턴값을 보내게 됩니다.
}
