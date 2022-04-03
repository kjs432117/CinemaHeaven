package co.movie.prj.reserve.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CHReserveVO {

	private String reserve_moviename;
	private String reserve_movieid;
	private String reserve_moviedate;
	private String reserve_reservedate;
	private String reserve_selectedseat;
	private String reserve_selectedtheater;
	private String reserve_starttime;
	private String reserve_id;
	private String reserve_userid;

	private String movie_reserve_id;
	private String movie_reserve_title;
	private String movie_reserve_runningtime;
	private Date movie_reserve_date;
	private String movie_reserve_theater;
	private String movie_reserve_starttime;
	private int movie_reserve_count;
	
	private int cnt;

}
