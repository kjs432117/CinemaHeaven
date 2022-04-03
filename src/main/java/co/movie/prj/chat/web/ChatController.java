package co.movie.prj.chat.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChatController {
   
   @RequestMapping( value = "/loginconFirm.do", method = RequestMethod.GET)
   public String login() {
      return "count/login";
   }
   
   @RequestMapping(value = "/chat.do", method = RequestMethod.POST)
   public String chat(@RequestParam String id, HttpServletRequest request) {
      
      HttpSession session = request.getSession();
      session.setAttribute("id", id);
      return "chat";
      
   }
   
}