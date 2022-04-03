package co.movie.prj.movies.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MoviesVO {
	private String movie_id;
	private String movie_poster;
	private String movie_title;
	private String movie_director;
	private String movie_actor;
	private String movie_genre;
	private String movie_runningtime;
	private Date movie_releasedate;
	private String movie_description;
	private Date movie_startdate;
	private Date movie_enddate;
	private String movie_trailer;
	private int movie_count;
	private double movie_rate;

}
