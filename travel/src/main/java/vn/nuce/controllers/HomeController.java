package vn.nuce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import vn.nuce.dto.BookTourDto;
import vn.nuce.dto.TourDto;
import vn.nuce.dto.UserDto;
import vn.nuce.service.impl.BookTourServiceImpl;
import vn.nuce.service.impl.TourServiceImpl;
import vn.nuce.service.impl.UserServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/home")
@Controller
public class HomeController {

    @Autowired
    UserServiceImpl service;

    @Autowired
    TourServiceImpl tourService;

    @Autowired
    BookTourServiceImpl bookTourService;

    @GetMapping
    public String showPage(HttpSession session, ModelMap modelMap) {
        UserDto dto = null;
        if (session.getAttribute("user") != null) {
            dto = (UserDto) session.getAttribute("user");
        }
        if (dto != null) {
            modelMap.addAttribute("dto", dto);
        }
        setUser(session, modelMap);

        // top 3 trang home
        List<TourDto> tours = new ArrayList<>();
        try {
            tours = tourService.findTop3();
        } catch (Exception e) {
            e.printStackTrace();
        }
        modelMap.addAttribute("tours", tours);
        if (session.getAttribute("status") != null) {
            modelMap.addAttribute("status", session.getAttribute("status"));
            session.removeAttribute("status");
        }
        return "home";
    }

    private void setUser(HttpSession session, ModelMap modelMap) {
        if (session.getAttribute("user") != null) {
            UserDto dto = (UserDto) session.getAttribute("user");
            modelMap.addAttribute("dto", dto);
        }
    }


    @GetMapping("/home/{id}")
    public String showTourById(@PathVariable Long id, HttpSession session, ModelMap modelMap) {
        setUser(session, modelMap);

        TourDto dto = tourService.findOneTour(id);

        modelMap.addAttribute("tour", dto);

        return "/home";
    }
    @GetMapping("/contact")
    public String contact(){
        return "home/contact";
    }
    @GetMapping("/about")
    public String about(){
        return "home/about";
    }




}
