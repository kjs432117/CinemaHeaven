package co.movie.prj.admin.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.movie.prj.movies.service.MoviesService;
import co.movie.prj.movies.service.MoviesVO;
import co.movie.prj.reserve.service.CHReserveService;

@Controller
public class AdminController {

	@Autowired
	private CHReserveService reserveDao;
	
	@Autowired
	private MoviesService moviesDao;
	
	@RequestMapping("/main.do")
	public String main(Model model) {
		
		
		int a = reserveDao.getReserveCount().getCnt();
		int b = a*11000;
		
		List<MoviesVO> top3 = moviesDao.moviesSelectTop3();
		
		
		model.addAttribute("count", a);
		model.addAttribute("money", b);
		
		if (top3.isEmpty()) {

		} else {
			model.addAttribute("top3", top3);
		}
		
		
		return "admin/main/main";
	}

}
