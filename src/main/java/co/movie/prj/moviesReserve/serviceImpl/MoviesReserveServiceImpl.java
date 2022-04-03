package co.movie.prj.moviesReserve.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.movie.prj.moviesReserve.service.MoviesReserveMapper;
import co.movie.prj.moviesReserve.service.MoviesReserveService;
import co.movie.prj.moviesReserve.service.MoviesReserveVO;

@Repository("moviesReserveDao")
public class MoviesReserveServiceImpl implements MoviesReserveService {

	@Autowired
	private MoviesReserveMapper map;

	@Override
	public List<MoviesReserveVO> moviesReserveSelectList() {
		return map.moviesReserveSelectList();
	}

	@Override
	public int moviesReserveInsert(MoviesReserveVO mReserve) {
		return map.moviesReserveInsert(mReserve);
	}

}
