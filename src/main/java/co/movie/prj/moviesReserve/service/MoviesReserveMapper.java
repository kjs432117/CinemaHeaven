package co.movie.prj.moviesReserve.service;

import java.util.List;

public interface MoviesReserveMapper {
	List<MoviesReserveVO> moviesReserveSelectList();

	int moviesReserveInsert(MoviesReserveVO mReserve);

}
