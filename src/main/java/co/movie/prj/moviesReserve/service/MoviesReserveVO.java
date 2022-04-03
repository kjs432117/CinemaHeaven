package co.movie.prj.moviesReserve.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MoviesReserveVO {
	private String movie_reserve_id;
	private String movie_reserve_title;
	private String movie_reserve_runningtime;
	private Date movie_reserve_date;
	private String movie_reserve_theater;
	private String movie_reserve_starttime;
	private String movie_reserve_count;

}