package co.movie.prj.reserve.web;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import co.movie.prj.movies.service.MoviesService;
import co.movie.prj.reserve.service.CHReserveService;
import co.movie.prj.reserve.service.CHReserveVO;

@Controller
public class ReserveConteroller {
	@Autowired
	CHReserveService reserveDao;

	@Autowired
	private MoviesService moviesDao;

	@RequestMapping("reserve.do")
	public String reserve() {

		return "reserve/reserve";
	}

	@RequestMapping(value = "reserveMovieList.do", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String reserveMovieList(Model model) {
		List<CHReserveVO> CHR = reserveDao.reserveSelectListTitle();

		String gson = new Gson().toJson(CHR);

		return gson;

	}

	@RequestMapping(value = "reserveMovieDateList.do", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String reserveMovieDateList(@RequestParam("movie_reserve_title") String movie_reserve_title,
			@RequestParam("movie_reserve_date") String movie_reserve_date, Model model) {

		movie_reserve_title = movie_reserve_title.trim();
		movie_reserve_date = movie_reserve_date.trim();
		System.out.println(movie_reserve_title);
		System.out.println(movie_reserve_date);

		List<CHReserveVO> rMDL = reserveDao.reserveSelectDate(movie_reserve_title, movie_reserve_date);
		String gson = new Gson().toJson(rMDL);
		System.out.println(gson);
		return gson;
	}

	@RequestMapping(value = "seat.do", produces = "text/plain;charset=UTF-8")
	public String seat(CHReserveVO reserve, Model model, HttpSession session) {

		System.out.println(reserve.getMovie_reserve_title());
//		session.setAttribute("id", "test");
		session.setAttribute("reserve_movie_id", reserve.getMovie_reserve_id());
		session.setAttribute("reserve_movie_title", reserve.getMovie_reserve_title());
		session.setAttribute("reserve_movie_theater", reserve.getMovie_reserve_theater());
		session.setAttribute("reserve_movie_date", reserve.getMovie_reserve_date());
		session.setAttribute("reserve_movie_starttime", reserve.getMovie_reserve_starttime());
		return "seat/seat";
	}

	@RequestMapping(value = "reserveSeatList.do", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String reserveSeatList(Model model, HttpSession session) {
		reserveDao.getReserveSeat(session.getAttribute("reserve_movie_id").toString());

		List<CHReserveVO> rSL = reserveDao.getReserveSeat(session.getAttribute("reserve_movie_id").toString());
		String gson = new Gson().toJson(rSL);
		System.out.println(gson);
		return gson;
	}

	@RequestMapping(value = "yeyak.do", produces = "text/plain;charset=UTF-8")
	public String yeyak(CHReserveVO reserve, HttpSession session) {
		System.out.println(reserve.getReserve_selectedseat());
		System.out.println(session.getAttribute("reserve_movie_title"));
		moviesDao.moviesUpdateCount(session.getAttribute("reserve_movie_title").toString());
		reserve.setReserve_movieid(session.getAttribute("reserve_movie_id").toString());
		reserve.setReserve_userid(session.getAttribute("id").toString());
		reserve.setReserve_moviename(session.getAttribute("reserve_movie_title").toString());
		reserve.setReserve_selectedtheater(session.getAttribute("reserve_movie_theater").toString());
		reserve.setReserve_moviedate(session.getAttribute("reserve_movie_date").toString());
		reserve.setReserve_starttime(session.getAttribute("reserve_movie_starttime").toString());
		System.out.println(reserve.getReserve_moviename());
		reserveDao.reserveInsert(reserve);
		return "yeyak/yeyak";
	}

}
