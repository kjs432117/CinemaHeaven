package co.movie.prj.notice.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import lombok.Getter;
import lombok.Setter;


public interface NoticeMapper {
	List<NoticeVO> noticeSelectList();
	NoticeVO noticeinsertSelect(int notice_id);
	NoticeVO noticeSelect(NoticeVO notice);
	int noticeInsert(NoticeVO notice);
	int noticeDelete(NoticeVO notice);
	int noticeUpdate(NoticeVO notice);
	
	int noticeHitUpdate(int notice_id); 
	int noticeIdUpdate(int notice_id); 
	List<NoticeVO> noticeSearch(@Param("key")String key, @Param("val") String val);
}
