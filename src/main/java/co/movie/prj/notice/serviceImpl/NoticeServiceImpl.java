package co.movie.prj.notice.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.movie.prj.notice.service.NoticeMapper;
import co.movie.prj.notice.service.NoticeService;
import co.movie.prj.notice.service.NoticeVO;

@Repository("noticeDao")
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeMapper map;
	@Override
	public List<NoticeVO> noticeSelectList() {
		return map.noticeSelectList();
	}

	@Override
	public NoticeVO noticeSelect(NoticeVO notice) {
		return map.noticeSelect(notice);
	}

	@Override
	public int noticeInsert(NoticeVO notice) {
		return map.noticeInsert(notice);
	}
	@Override
	public int noticeDelete(NoticeVO notice) {
		
		return map.noticeDelete(notice);
	}

	@Override
	public int noticeUpdate(NoticeVO notice) {
		return map.noticeUpdate(notice);
	}

	@Override
	public int noticeHitUpdate(int id) {
		return map.noticeHitUpdate(id);
	}

	@Override
	public int noticeIdUpdate(int id) {
		
		return map.noticeIdUpdate(id);
	}

	@Override
	public List<NoticeVO> noticeSearch(String key, String val) {
		
		return map.noticeSearch(key, val);
	}

	@Override
	public NoticeVO noticeinsertSelect(int notice_id) {
		return map.noticeinsertSelect(notice_id);
	}

}
