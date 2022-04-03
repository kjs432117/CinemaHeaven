package co.movie.prj.movies.service;

import java.util.List;

public interface MoviesMapper {
	List<MoviesVO> moviesSelectList();

	List<MoviesVO> moviesSelectList2(MoviesVO movie);

	List<MoviesVO> moviesSelectListNow();

	List<MoviesVO> moviesSelectListBefore();

	List<MoviesVO> moviesSelectTop3();

	MoviesVO moviesSelect(String id);

	int moviesInsert(MoviesVO movies);

	int moviesUpdateCount(String movie_title);

	int moviesDelete(MoviesVO movies);

}
