package co.movie.prj.Client.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import co.movie.prj.Client.service.ClientService;
import co.movie.prj.Client.service.ClientVO;
import co.movie.prj.movies.service.MoviesService;
import co.movie.prj.movies.service.MoviesVO;
import co.movie.prj.reserve.service.CHReserveService;
import co.movie.prj.reserve.service.CHReserveVO;

@Controller
public class ClientController {

   @Autowired
   private ClientService clientDao;

   @Autowired
   private CHReserveService reserveDao;

   @Autowired
   private MoviesService moviesDao;

   // 로그인 입력 화면
   @RequestMapping("/loginForm.do")
   public String loginForm() {
      return "client/loginForm";
   }

   // 로그인
   @PostMapping("/login.do")
   public String login(ClientVO client, HttpSession session) {
      client = clientDao.clientSelect(client);

      if (client != null) {
         session.setAttribute("id", client.getId());
         session.setAttribute("author", client.getAuthor());
//         session.setAttribute("name", client.getName());
//         session.setAttribute("pw", client.getPw());
//         session.setAttribute("tell", client.getTell());
         session.setAttribute("genre", client.getGenre());

         System.out.println(client.toString());

         if (client.getAuthor() == null) {
            return "redirect:home.do";
         } else {
            return "redirect:main.do"; // admin
         }
      } else {
         return "client/loginForm";
      }
   }

   // 로그아웃
   @RequestMapping("/logout.do")
   public String logout(HttpSession session) {
      session.invalidate();
      return "redirect:home.do";
   }

   // 멤버 조회 : admin 페이지에서
   @RequestMapping("/clientSelectList.do")
   public String clientSelectList(Model model) {

      model.addAttribute("clients", clientDao.clientSelectList());
      return "admin/client/clientSelectList";

   }

   // 회원가입 입력창
   @RequestMapping("/registerForm.do")
   public String registerForm() {
      return "client/registerForm";
   }

   // 회원가입
   @PostMapping("/register.do")
   public String clientRegister(ClientVO client, Model model) {
      int n = clientDao.clientInsert(client);
      if (n != 0) {
         model.addAttribute("message", "회원가입 성공하셨습니다.");

      } else {
         model.addAttribute("message", " 회원가입 실패하셨습니다.");
      }

      return "client/register";
   }

   // 아이디체크
   @PostMapping("/ajaxIsIdCheck.do")
   @ResponseBody
   public boolean ajaxIsIdCheck(String id) {
      return clientDao.isIdCheck(id);
   }

   // 마이페이지
   @RequestMapping("/myPage.do")
   public String myPage(Model model, HttpServletRequest request) {

      HttpSession session = request.getSession();

      String id = (String) session.getAttribute("id");

      model.addAttribute("client", clientDao.clientOne(id));

      return "client/myPage";
   }

   // 회원정보 수정 입력 창.
   @RequestMapping("/clientUpdateForm.do")
   public String clientUpdateForm(Model model, HttpSession session) {

      String id = (String) session.getAttribute("id");
      model.addAttribute("client", clientDao.clientOne(id));

      return "client/clientUpdateForm";
   }

   // 회원정보 수정.
   @PostMapping("/clientUpdate.do")
   public String clientUpdate(ClientVO client, Model model, HttpSession session) {
	   session.setAttribute("genre", client.getGenre());
	   
      int n = clientDao.clientUpdate(client);

      if (n != 0) {
         model.addAttribute("message", "회원수정 성공하셨습니다.");

      } else {
         model.addAttribute("message", " 회원수정 실패하셨습니다.");
      }

      return "client/clientUpdate";

   }

   // 회원정보 확인
   @PostMapping("/ajaxSearchClient.do")
   @ResponseBody
   public List<ClientVO> ajaxSearchMember(@RequestParam("key") String key, @RequestParam("data") String data) {

      return clientDao.clientSearch(key, data);
   }

   // 예매리스트
   @RequestMapping("/yeaMeList.do")
   public String yeaMeList(CHReserveVO reserve, Model model, HttpSession session) {

      reserve.setReserve_userid(session.getAttribute("id").toString());
      System.out.println(reserve.getReserve_userid());

      List<CHReserveVO> list = reserveDao.getReserveList(reserve);
      System.out.println(list);

      if (list != null) {
         for (CHReserveVO vo : list) {
            System.out.println(vo.toString());
            model.addAttribute("yeaMes", list);
         }
      } else {
         System.out.println("오류");
      }

      return "client/yeaMeList";

   }

   // 추천리스트
   @RequestMapping("/chuchunList.do")
   public String moviesList(MoviesVO movie, Model model, HttpSession session) {

      movie.setMovie_genre(session.getAttribute("genre").toString());
      System.out.println(movie.getMovie_genre());

      List<MoviesVO> list = moviesDao.moviesSelectList2(movie);
      System.out.println(list);

      model.addAttribute("chuchunMovie", list);
      return "client/chuchunList";
   }

   /*
    * @RequestMapping("/chuchunAjax1.do")
    * 
    * @ResponseBody public String chuchunList(MoviesVO movie, Model model,
    * HttpSession session) {
    * 
    * movie.setMovie_genre(session.getAttribute("genre").toString());
    * System.out.println(movie.getMovie_genre());
    * 
    * List<MoviesVO> list = moviesDao.moviesSelectList(); System.out.println(list);
    * 
    * model.addAttribute("chuchunMovie", list); return "client/chuchunList"; }
    */

}