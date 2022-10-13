package com.kh.realfinal.board.controller;

import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import com.kh.realfinal.board.model.service.BoardService;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.board.model.vo.Reply;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.member.model.vo.Member;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/board")
@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@Autowired
	private ResourceLoader resourceLoader;
	
	// 커뮤니티 메인
	@GetMapping("/main")
	public String gocommunity() {
		log.info("게시판 메인가기!");
		return "community/communityMain";
	}
		
	@GetMapping("/communityMain")
	public String list(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {}
		}
		
		PageInfo pageInfo = new PageInfo(page, 10, service.getBoardCount(param), 10);
		List<Board> list = service.getBoardList(pageInfo, param);
		
		model.addAttribute("list",list);
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "/community/communityMain";
	}
	
	// 커뮤니티
	
	// 게시글 상세보기
	@GetMapping("/BoardDetail")
	public String view(Model model, @RequestParam("no") int no) {
		Board board = service.findByNo(no);
		
		if(board == null) {
			return "redirect:error";
		}
		
		model.addAttribute("board", board);
		model.addAttribute("replyList", board.getReplies());
		return "/community/communityBoardDetail";
	}
	
	// 에러
	@GetMapping("/error")
	public String error() {
		log.info("에러 페이지 호출!!!!!");
		return "/common/error";
	}
	
	// 글 작성 페이지 가기
	@GetMapping("/writePost")
	public String gowrite() {
		log.info("게시글 작성 페이지 가기");
		return "community/communityBoardPost";
	}
	
	// 글 작성
	@PostMapping("/board/Post")
	public String writeBoard(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("upfile") MultipartFile upfile
			) {
		log.info("게시글 작성 요청");
		
		if(loginMember == null || (loginMember.getUser_no() == (board.getWriter_no())) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		board.setWriter_no(loginMember.getUser_no());
		
		if(upfile != null && upfile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/board";
			String renameFileName = service.saveFile(upfile, savePath);
			
			if(renameFileName != null) {
				board.setBoard_originalFileName(upfile.getOriginalFilename());
				board.setBoard_renamedFileName(renameFileName);
			}
		}
		log.debug("board : " + board);
		int result = service.saveBoard(board);
		if(result > 0) {
			model.addAttribute("msg", "게시글 작성이 정상적으로 성공하였습니다.");
			model.addAttribute("location", "/community");	// 해당 게시판 가게 하기!
		}else {
			model.addAttribute("msg", "게시글 작성에 실패하였습니다.");
			model.addAttribute("location", "/community");	// 원래 있었던 곳 가게 하기!
		}
		return "/common/msg";
	}
	
	// 댓글 작성
	@PostMapping("/reply")
	public String writeReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Reply reply
			) {
		log.info("리플 작성 요청");
		
		if((loginMember.getUser_no() == (reply.getWriter_no())) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		reply.setWriter_no(loginMember.getUser_no());
		log.debug("reply : " + reply);
		int result = service.saveReply(reply);
		
		if(result > 0) {
			model.addAttribute("msg", "리플이 등록 되었습니다.");
		}else {
			model.addAttribute("msg", "리플 작성에 실패하였습니다.");
		}
		model.addAttribute("location", "/board/view?no="+ reply.getBoard_no());
		return "/common/msg";
	}
	
	// 게시글 삭제
	@RequestMapping("/delete")
	public String deleteBoardReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int boardNo
			) {
		log.debug("글삭제 요청");
		String rootPath = request.getSession().getServletContext().getRealPath("resources");
		rootPath = rootPath + "/upload/board"; 
		int result = service.deleteBoard(boardNo, rootPath);
		
		if(result > 0) {
			model.addAttribute("msg", "게시글 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "게시글 삭제 실패하였습니다.");
		}
		model.addAttribute("location", "/board/list");
		return "/common/msg";
	}
	
	// 댓글 삭제
	@RequestMapping("/replydel")
	public String deleteReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			int replyNo, int boardNo
			) {
		log.debug("댓글 삭제 요청");
		int result = service.deleteReply(replyNo);
		
		if(result > 0) {
			model.addAttribute("msg", "댓글 삭제에 성공하였습니다.");
		}else {
			model.addAttribute("msg", "댓글 삭제 실패하였습니다.");
		}
		model.addAttribute("location", "/board/view?no=" + boardNo);
		return "/common/msg";
	}
	
	// update 화면 보여주는 기능
	@GetMapping("/update")
	public String updateView(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestParam("no") int boardNo) {
		Board board = service.findByNo(boardNo);
		
		if(loginMember.getUser_no() == board.getWriter_no()) {
			model.addAttribute("board",board);
			return "board/update";
		}else {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/board/list");
			return "/common/msg";
		}
	}
		
	// 게시글 수정
	@PostMapping("/update")
	public String updateBoard(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute Board board,
			@RequestParam("reloadFile") MultipartFile reloadFile
			) {
		log.info("게시글 수정 요청");
		if(loginMember.getUser_no() == (board.getWriter_no()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		board.setWriter_no(loginMember.getUser_no());
		
		// 파일을 저장하는 로직
		if(reloadFile != null && reloadFile.isEmpty() == false) {
			String rootPath = request.getSession().getServletContext().getRealPath("resources");
			String savePath = rootPath + "/upload/board";
			
			// 기존에 파일이 있는 경우 -> 기존 파일 삭제요청 필요!!
			if(board.getBoard_renamedFileName() != null) {
				service.deleteFile(savePath + "/" + board.getBoard_renamedFileName());
			}
			
			String renameFileName = service.saveFile(reloadFile, savePath); // 실제 파일 저장하는 코드
			if(renameFileName != null) {
				board.setBoard_originalFileName(reloadFile.getOriginalFilename());
				board.setBoard_renamedFileName(renameFileName);
			}
		}
		log.debug("board : " + board);
		int result = service.saveBoard(board);
		if(result > 0) {
			model.addAttribute("msg", "게시글 수정이 정상적으로 성공하였습니다.");
			model.addAttribute("location", "/board/view?no=" + board.getUser_no());
		}else {
			model.addAttribute("msg", "게시글 수정에 실패하였습니다.");
			model.addAttribute("location", "/board/update?no=" + board.getUser_no());
		}
		return "/common/msg";
	}
	
	// 첨부파일 받기
	@RequestMapping("/fileDown")
	public ResponseEntity<Resource> fileDown(
			@RequestParam("oriname") String oriname,
			@RequestParam("rename") String rename,
			@RequestHeader(name= "user-agent") String userAgent){
		try {
			Resource resource = resourceLoader.getResource("resources/upload/board/" + rename);
			String downName = null;
			
			// 인터넷 익스플로러 인 경우
			boolean isMSIE = userAgent.indexOf("MSIE") != -1 || userAgent.indexOf("Trident") != -1;

			if (isMSIE) { // 익스플로러 처리하는 방법
				downName = URLEncoder.encode(oriname, "UTF-8").replaceAll("\\+", "%20");
			} else {    		
				downName = new String(oriname.getBytes("UTF-8"), "ISO-8859-1"); // 크롬
			}
			return ResponseEntity.ok()
					.header(HttpHeaders.CONTENT_DISPOSITION, "attachment;filename=\"" + downName + "\"")
					.header(HttpHeaders.CONTENT_LENGTH, String.valueOf(resource.contentLength()))
					.header(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_OCTET_STREAM.toString())
					.body(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build(); // 실패했을 경우
	}
	
	// 마이페이지 - 내글목록
	@GetMapping("/myBoard")
	public String goMyBoard() {
		log.info("마이페이지 내 글목록 가기!");
		return "mypage/mypageBoardList";
	}
	
	// 마이페이지 - 내글목록
	@GetMapping("/myReply")
	public String goMyReply() {
		log.info("마이페이지 내 댓글목록 가기!");
		return "mypage/mypageReply";
	}
	
}