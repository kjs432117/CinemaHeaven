package co.movie.prj;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.movie.prj.movies.service.MoviesService;
import co.movie.prj.movies.service.MoviesVO;

@Controller
public class HomeController {

	@Autowired
	private MoviesService moviesDao;

	@RequestMapping("/home.do")
	public String home(Model model) {

		List<MoviesVO> top3 = moviesDao.moviesSelectTop3();
		List<MoviesVO> showing = moviesDao.moviesSelectListNow();
		List<MoviesVO> before = moviesDao.moviesSelectListBefore();

		System.out.println(top3.get(0).getMovie_rate());

		if (showing.isEmpty()) {

		} else {
			model.addAttribute("showings", showing);
		}

		if (before.isEmpty()) {

		} else {
			model.addAttribute("befores", before);
		}

		if (top3.isEmpty()) {

		} else {
			model.addAttribute("top3", top3);
		}

		return "home/home";

	}

}
