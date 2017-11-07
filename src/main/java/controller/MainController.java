package controller;

import entity.Photo;
import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import repository.AudiosRepository;
import repository.PhotosRepository;
import repository.VideosRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;
import java.util.Objects;

@Controller
public class MainController {

    @Autowired
    private AudiosRepository audiosRepository;

    @Autowired
    private PhotosRepository photosRepository;

    @Autowired
    private VideosRepository videosRepository;

    @RequestMapping(value = "/ShowServlet", method = RequestMethod.GET)
    protected ModelAndView service(HttpServletRequest request) throws ServletException, IOException {
        System.out.println("Сработал ShowServlet");
        System.out.println(request.getParameter("action"));
        ModelAndView modelAndView = new ModelAndView();
        if (Objects.equals(request.getParameter("action"), "audio")) {
            System.out.println("Сработал параметр Аудио!");
            modelAndView = sendDTOListOnPage(audiosRepository);
        } else if (Objects.equals(request.getParameter("action"), "video")) {
            modelAndView = sendDTOListOnPage(videosRepository);
        } else if (Objects.equals(request.getParameter("action"), "photo")) {
            modelAndView = sendDTOListOnPage(photosRepository);
        } else if (Objects.equals(request.getParameter("action"), "onePhoto")) {
            modelAndView = sendPhotoDTOOnPage(request);
        } else {
            System.out.println("Не прошёл параметр!");
            modelAndView.setViewName("/index");
        }

        return modelAndView;
    }

    private ModelAndView sendDTOListOnPage(JpaRepository jpaRepository) throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView();
        List dtoList;
        try {
            dtoList = jpaRepository.findAll();
            modelAndView.addObject("dtoList", dtoList);
        } catch (Exception e) {
            modelAndView.addObject("action", "error");
            modelAndView.addObject("error", "connect_BD");
        }
        modelAndView.setViewName("/import");
        return modelAndView;
    }

    private ModelAndView sendPhotoDTOOnPage(HttpServletRequest request) throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView();
        Photo photo;
        try {
            Integer id = Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            photo = photosRepository.getOne(id);
            modelAndView.addObject("photo", photo);
        } catch (Exception e) {
            modelAndView.addObject("action", "error");
            modelAndView.addObject("error", "connect_BD");
        }
        modelAndView.setViewName("/index");
        return modelAndView;
    }

    @RequestMapping(value = "/sendEmail", method = RequestMethod.GET)
    private ModelAndView sendEmail(HttpServletRequest request) throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView();
        if (Objects.equals(request.getParameter("action"), "SEND")) {
            if (request.getParameter("name").isEmpty()) {
                modelAndView.addObject("action", "error");
                modelAndView.addObject("error", "name_error");
            } else if (request.getParameter("phone").isEmpty()) {
                modelAndView.addObject("action", "error");
                modelAndView.addObject("error", "phone_error");
            } else if (request.getParameter("e-mail").isEmpty()) {
                modelAndView.addObject("action", "error");
                modelAndView.addObject("error", "e-mail_error");
            } else {
                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                try {
                    SimpleEmail email = new SimpleEmail();
                    email.setSSLOnConnect(true);
                    email.setHostName("smtp.gmail.com");
                    email.setSmtpPort(465);
                    email.setSubject("DMV " + phone + "|" + name);
                    email.setAuthenticator(new DefaultAuthenticator("User Name", "Password"));
                    email.addTo("dmv@gmail.com", "DMV.com");
                    email.setFrom(request.getParameter("e-mail"), name);
                    email.setMsg("Text + " + phone + "|" + name);
                    email.send();
                } catch (EmailException e) {
                    e.getStackTrace();
                    modelAndView.addObject("action", "error");
                    modelAndView.addObject("error", "send_e-mail");
                }
            }
        }
        modelAndView.setViewName("/index");
        return modelAndView;
    }


//    @RequestMapping(value = "/homeRequest", method = RequestMethod.GET)
//    public @ResponseBody String addComment() {
//        String text = "Test homeRequest";
//        System.out.println("controller");
//        return text;
//    }


//    @RequestMapping(value = "/about_myselfRequest", method = RequestMethod.POST)
//    public @ResponseBody String addComment2(Model model) {
//        String text = "tfgyhj";
//        //model.addAttribute("action", "about_myself");
//        System.out.println("controller2");
//        return text;
//    }


    //    @RequestMapping(value = "/homeRequest", method = RequestMethod.POST)
//    public @ResponseBody String addComment3(Model model) {
////        Document newDocument = DocumentService.create(Document);
//
////        return jsonSerializer.serialize(newDocument);
//
//
////        String text = "<link rel='import' href='/home.jsp'>";
//        String text = "ghj";
//        //model.addAttribute("action", "about_myself");
//        System.out.println("controller3");
//        return text;
//    }
    @RequestMapping(value = "/audio", method = RequestMethod.GET)
    public @ResponseBody String addComment(Model model) {
//        List<Comments> comments = commentsService.findByNewsId(id);
        String comments = "HOME";
        model.addAttribute("name", "name");
        System.out.println("controller");
        return comments;
    }
}
