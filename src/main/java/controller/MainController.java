package controller;

import entity.Photo;
import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import repository.AudiosRepository;
import repository.PhotosRepository;
import repository.VideosRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

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
        ModelAndView modelAndView = new ModelAndView();

        if (Objects.equals(request.getParameter("action"), "about_myself")) {
            modelAndView.setViewName("/WEB-INF/views/about_myself.jsp");
        } else if (Objects.equals(request.getParameter("action"), "audio")) {
            modelAndView = sendDTOListOnPage(audiosRepository, "/WEB-INF/views/audio.jsp");
        } else if (Objects.equals(request.getParameter("action"), "video")) {
            modelAndView = sendDTOListOnPage(videosRepository, "/WEB-INF/views/video.jsp");
        } else if (Objects.equals(request.getParameter("action"), "photo")) {
            modelAndView = sendDTOListOnPage(photosRepository, "/WEB-INF/views/photo.jsp");
        } else if (Objects.equals(request.getParameter("action"), "onePhoto")) {
            modelAndView = sendPhotoDTOOnPage(request);
        } else if (Objects.equals(request.getParameter("action"), "cost")) {
            modelAndView.setViewName("/WEB-INF/views/cost.jsp");
        } else if (Objects.equals(request.getParameter("action"), "reviews")) {
            modelAndView.setViewName("/WEB-INF/views/reviews.jsp");
        } else if (Objects.equals(request.getParameter("action"), "contacts")) {
            modelAndView.setViewName("/WEB-INF/views/contacts.jsp");
        } else{
            modelAndView.setViewName("/WEB-INF/views/home.jsp");
        }
        return modelAndView;
    }

    private ModelAndView sendDTOListOnPage(JpaRepository jpaRepository, String view) throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView();
        List dtoList;
        try {
            dtoList = jpaRepository.findAll();
            modelAndView.addObject("dtoList", dtoList);
            modelAndView.setViewName(view);
        } catch (Exception e) {
            modelAndView.addObject("error", "connect_BD");
            modelAndView.setViewName("/WEB-INF/views/error.jsp");
        }
        return modelAndView;
    }

    private ModelAndView sendPhotoDTOOnPage(HttpServletRequest request) throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView();
        Optional<Photo> photoOptional;
        try {
            Integer id = Integer.parseInt(request.getParameter("id"));
            photoOptional = photosRepository.findById(id);
            modelAndView.addObject("photo", photoOptional.get());
            modelAndView.setViewName("/WEB-INF/views/onePhoto.jsp");
        } catch (Exception e) {
            modelAndView.addObject("error", "connect_BD");
            modelAndView.setViewName("/WEB-INF/views/error.jsp");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/sendEmail", method = RequestMethod.GET)
    private ModelAndView sendEmail(HttpServletRequest request) throws ServletException, IOException {
        ModelAndView modelAndView = new ModelAndView();
            if (request.getParameter("name").isEmpty()) {
                modelAndView.addObject("error", "name_error");
                modelAndView.setViewName("/WEB-INF/views/error.jsp");
            } else if (request.getParameter("phone").isEmpty()) {
                modelAndView.addObject("error", "phone_error");
                modelAndView.setViewName("/WEB-INF/views/error.jsp");
            } else if (request.getParameter("email").isEmpty()) {
                modelAndView.addObject("error", "email_error");
                modelAndView.setViewName("/WEB-INF/views/error.jsp");
            } else {
                String name = request.getParameter("name");
                String phone = request.getParameter("phone");
                String mail = request.getParameter("email");
                try {
                    SimpleEmail email = new SimpleEmail();
                    email.setSSLOnConnect(true);
                    email.setHostName("smtp.gmail.com");
                    email.setSmtpPort(465);
                    email.setSubject("DMV " + phone + "|" + name);
                    email.setAuthenticator(new DefaultAuthenticator("kvintap.by", "dmvqwerty"));
                    email.addTo("kvintap.by@gmail.com", "DMV.com");
                    email.setFrom(mail, name);
                    email.setMsg("Text + " + phone + "|" + name);
                    email.send();
                    modelAndView.setViewName("/WEB-INF/views/send.jsp");
                } catch (EmailException e) {
                    e.getStackTrace();
                    modelAndView.addObject("error", "send_email");
                    modelAndView.setViewName("/WEB-INF/views/error.jsp");
                }
            }
        return modelAndView;
    }
}
