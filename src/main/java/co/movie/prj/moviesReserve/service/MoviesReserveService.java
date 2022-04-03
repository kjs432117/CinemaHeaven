package co.movie.prj.moviesReserve.service;

import java.util.List;

public interface MoviesReserveService {
	List<MoviesReserveVO> moviesReserveSelectList();

	int moviesReserveInsert(MoviesReserveVO mReserve);

}
