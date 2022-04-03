package co.movie.prj.notice.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.movie.prj.notice.service.NoticeService;
import co.movie.prj.notice.service.NoticeVO;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeDao; // dao
	
	//게시판 리스트 
	@RequestMapping("/noticeSelectList.do")
	public String noticeSelectList( Model model) {
		model.addAttribute("notices", noticeDao.noticeSelectList());
		return "notice/noticeSelectList";
	}
////map페이지
	@RequestMapping("/address.do")
	public String address(){
		return "notice/address";
	}
//chat
	@RequestMapping("/chat.do")
	public String chat(){
		return "notice/chat";
	}
//고객센터 페이지
	@RequestMapping("/pricing.do")
	public String pricing() {
		return "notice/pricing";
	}
//글쓰기 상세조회
	@RequestMapping("/noticeSelect.do")
	   public String noticeSelect(NoticeVO notice, Model model) {
	      noticeDao.noticeHitUpdate(notice.getNotice_id());
	      System.out.println(notice.getNotice_id());
	      model.addAttribute("notices", noticeDao.noticeSelect(notice));
	      return "notice/noticeSelect";
	}
//글쓰기 폼
	  @RequestMapping("/noticeInsertForm.do") 
	  public String noticeInsert() {
		  return "notice/noticeInsertForm";
	  }
	
	  @RequestMapping("/noticeInsert.do") 
	  public String noticeInsert(NoticeVO notice, Model model) {
		System.out.println(notice.getNotice_title());
		noticeDao.noticeInsert(notice);
		model.addAttribute("notices", noticeDao.noticeSelectList());
		  return "notice/pricing";
	  }
// 게시판 수정 화면
	  @RequestMapping("/noticeUpdateForm.do")
	   public String noticeUpdate(@RequestParam(value="notice_id")int notice_id,@RequestParam(value="notice_title")String notice_title,Model model ) {
		  System.out.println(notice_id);
		  model.addAttribute("notices", noticeDao.noticeinsertSelect(notice_id));
	      return "notice/noticeUpdateForm";
	   }
	// 게시판 수정
	   @RequestMapping("/noticeUpdate.do")
	   public String noticeUpdate(NoticeVO notice, Model model) {
	      System.out.println(notice);
	      noticeDao.noticeUpdate(notice);
	      model.addAttribute("notices", noticeDao.noticeSelectList());
	      return "notice/noticeSelectList";
	   }
//게시판 삭제
	@RequestMapping("/noticeDelete.do")
	public String noticeDelete(@RequestParam(value="notice_id")int notice_id,Model model) {
		System.out.println(notice_id);
		NoticeVO notice = new NoticeVO();
		notice.setNotice_id(notice_id);
		noticeDao.noticeDelete(notice);
		model.addAttribute("notices", noticeDao.noticeSelectList());
		return "notice/noticeSelectList";
	}
//조회수
	@RequestMapping("/noticeHitUpdate.do")
	public String noticeHitUpdate(@RequestParam(value="notice_id")int notice_id,Model model) {
		System.out.println(notice_id);
		return "notice/noticeSelectList";
	}
//순번
	@RequestMapping("/noticeIdUpdate.do")
	public String noticeIdUpdate(Model model) {
		model.addAttribute("notices", noticeDao.noticeIdUpdate(0));
		return "notice/noticeIdUpdate";
	}
}
