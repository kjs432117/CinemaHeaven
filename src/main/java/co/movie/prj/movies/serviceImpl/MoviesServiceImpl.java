package co.movie.prj.movies.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.movie.prj.movies.service.MoviesMapper;
import co.movie.prj.movies.service.MoviesService;
import co.movie.prj.movies.service.MoviesVO;

@Repository("moviesDao")
public class MoviesServiceImpl implements MoviesService {

	@Autowired
	private MoviesMapper map;

	@Override
	public List<MoviesVO> moviesSelectList() {
		return map.moviesSelectList();
	}

	public List<MoviesVO> moviesSelectTop3() {
		return map.moviesSelectTop3();
	}

	@Override
	public MoviesVO moviesSelect(String id) {
		return map.moviesSelect(id);
	}

	@Override
	public int moviesInsert(MoviesVO movies) {
		return map.moviesInsert(movies);
	}

	@Override
	public int moviesUpdateCount(String movie_title) {
		return map.moviesUpdateCount(movie_title);
	}

	@Override
	public int moviesDelete(MoviesVO movies) {
		return map.moviesDelete(movies);
	}

	@Override
	public List<MoviesVO> moviesSelectListNow() {
		return map.moviesSelectListNow();
	}

	@Override
	public List<MoviesVO> moviesSelectListBefore() {
		return map.moviesSelectListBefore();
	}

	@Override
	public List<MoviesVO> moviesSelectList2(MoviesVO movie) {
		
		return map.moviesSelectList2(movie);
	}

}
