package co.movie.prj.movies.web;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import co.movie.prj.movies.service.MoviesService;
import co.movie.prj.movies.service.MoviesVO;

@Controller
public class MoviesController {

	@Autowired
	private String saveDir;

	@Autowired
	private MoviesService moviesDao;

	@RequestMapping("/moviesList.do")
	public String moviesList(Model model) {

		model.addAttribute("moviess", moviesDao.moviesSelectList());
		return "admin/movies/moviesList";
	}

	@RequestMapping("/moviesInsertForm.do")
	public String moviesInsertForm() {

		return "admin/movies/moviesInsertForm";
	}

	@RequestMapping("/moviesInsert.do")
	public String moviesInsert(@RequestParam("file") MultipartFile file, MoviesVO movies, Model model) {
		String originalFileName = file.getOriginalFilename();

		if (!originalFileName.isEmpty()) {
			String uuid = UUID.randomUUID().toString();
			String saveFileName = originalFileName + uuid
					+ originalFileName.substring(originalFileName.lastIndexOf("."));
			File save = new File(saveDir + saveFileName);
			try {
				file.transferTo(save);
				movies.setMovie_poster(saveFileName);

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		int result = moviesDao.moviesInsert(movies);
		System.out.println(result);
		model.addAttribute("movie_title", movies.getMovie_title());
		model.addAttribute("message", "등록이 정상적으로 수행되었습니다.");

		return "admin/movies/moviesInsert";

	}

	@RequestMapping("/catalog.do")
	public String catalog(Model model) {

		List<MoviesVO> showing = moviesDao.moviesSelectListNow();
		List<MoviesVO> all = moviesDao.moviesSelectList();

		if (!showing.isEmpty()) {
			model.addAttribute("showing", showing);
		} else {
		}

		if (!all.isEmpty()) {
			model.addAttribute("all", all);
		} else {
		}

		return "movies/catalog";
	}

	@RequestMapping("/detail.do")
	public String detail(String id, Model model) {

		model.addAttribute("detail", moviesDao.moviesSelect(id));

		return "movies/detail";
	}

}
