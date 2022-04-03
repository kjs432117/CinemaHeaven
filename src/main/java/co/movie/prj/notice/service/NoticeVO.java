package co.movie.prj.notice.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {
	
	private int notice_id; // �� ����
	private Date notice_writerdate; // �ۼ� ����
	private String notice_writername;//�ۼ� ���̵�
	private String notice_title; // ����
	private String notice_subject; // ����
	private int notice_hit; // ��ȸ��
	private String notice_attache; //÷������ ��
	
}
