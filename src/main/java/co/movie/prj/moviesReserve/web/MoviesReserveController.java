package co.movie.prj.moviesReserve.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.movie.prj.moviesReserve.service.MoviesReserveService;
import co.movie.prj.moviesReserve.service.MoviesReserveVO;

@Controller
public class MoviesReserveController {

	@Autowired
	private MoviesReserveService moviesReserveDao;

	@RequestMapping("/moviesReserveList.do")
	public String moviesReserveList(Model model) {

		model.addAttribute("moviesReserves", moviesReserveDao.moviesReserveSelectList());
		return "admin/movies/moviesReserveList";
	}

	@RequestMapping("/moviesReserveInsertForm.do")
	public String moviesReserveInsertForm() {

		return "admin/movies/moviesReserveInsertForm";
	}

	@RequestMapping("/moviesReserveInsert.do")
	public String moviesInsert(MoviesReserveVO mReserve, Model model) {

		moviesReserveDao.moviesReserveInsert(mReserve);
		model.addAttribute("movie_reserve_title", mReserve.getMovie_reserve_title());
		model.addAttribute("message", "등록이 정상적으로 수행되었습니다.");

		return "admin/movies/moviesReserveInsert";

	}

}
