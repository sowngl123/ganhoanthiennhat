package vn.nuce.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import vn.nuce.dto.RestaurantDto;
import vn.nuce.dto.TopicDto;
import vn.nuce.dto.TourDto;
import vn.nuce.dto.UserDto;
import vn.nuce.service.impl.RestaurantServiceImpl;
import vn.nuce.service.impl.TourServiceImpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.List;

@RequestMapping("/admin")
@Controller
public class AdminTourController {

    @Autowired
    TourServiceImpl service;
    RestaurantServiceImpl serviceRestaurant;

    @GetMapping("/tours")
    public String showPage(HttpSession session, ModelMap modelMap) {
        setUser(session, modelMap);
        setTopic(session, modelMap);
        List<TourDto> tours = new ArrayList<>();
        try {
            tours = service.findAllTours();
        } catch (Exception e) {
            e.printStackTrace();
        }



        modelMap.addAttribute("tours", tours);
        if (session.getAttribute("status") != null) {
            modelMap.addAttribute("status", session.getAttribute("status"));
            session.removeAttribute("status");
        }
        return "/admin/tour";
    }

    @GetMapping("/tour/{id}")
    public String showTourById(@PathVariable Long id, HttpSession session, ModelMap modelMap) {
        setUser(session, modelMap);
        setTopic(session, modelMap);

        TourDto dto = service.findOneTour(id);

        modelMap.addAttribute("tour", dto);


        return "/admin/tour_info";
    }

    @GetMapping("/tour/info")
    public String insertTourForm(HttpSession session, ModelMap modelMap) {
        setUser(session, modelMap);

        return "/admin/tour_info";
    }

    @PostMapping("/tour/info")
    public String insertTour(@RequestParam(name = "action") String action,
                             @RequestParam(name = "user_ID") Long user_ID,
                             @RequestParam(name = "tour_Name") String tour_Name,
                             @RequestParam(name = "tour_Departureday") Date tour_Departureday,
                             @RequestParam(name = "tour_Enddate") Date tour_Enddate,
                             @RequestParam(name = "tour_Max") Long tour_Max,
                             @RequestParam(name = "tour_Price") Long tour_Price,
                             @RequestParam(name = "tour_Departurelocation") String tour_Departurelocation,
                             @RequestParam(name = "tour_Describe") String tour_Describe,
                             @RequestParam(name = "file") MultipartFile image,
                             @RequestParam(name = "tour_Vehicle") Integer tour_Vehicle,
                             @RequestParam(name = "tour_Status") Integer tour_Status,
                             HttpSession session, HttpServletRequest request) throws ParseException, IOException {
        TourDto dto = new TourDto();
        dto.setUser_ID(user_ID);
        dto.setTour_Name(tour_Name);
        dto.setTour_Max(tour_Max);
        dto.setTour_Price(tour_Price);
        dto.setTour_Departurelocation(tour_Departurelocation);
        dto.setTour_Describe(tour_Describe);
        dto.setTour_Vehicle(tour_Vehicle);
        dto.setTour_Status(tour_Status);
        dto.setTour_Image(image.getOriginalFilename());
//        Timestamp timestamp = new Timestamp(System.currentTimeMillis());
//        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
//        Date date = new Date();
//        date = formatter.parse(String.valueOf(tour_Departureday));
        dto.setTour_Departureday(tour_Departureday);
        dto.setTour_Enddate(tour_Enddate);
        switch (action) {
            case "create":
                try {
                    service.saveTour(dto);
                    session.setAttribute("status", "success");
                } catch (Exception e) {
                    session.setAttribute("status", "fail");
                    e.printStackTrace();
                }
                break;
            case "update":
                try {
                    Long tourId = Long.valueOf(request.getParameter("tour_Id"));
                    Timestamp createdDate = Timestamp.valueOf(request.getParameter("tour_Createdate"));
                    dto.setTour_Id(tourId);
                    dto.setTour_Createdate(createdDate);
                    service.updateTour(dto);
                    session.setAttribute("status", "success");
                } catch (Exception e) {
                    session.setAttribute("status", "fail");
                    e.printStackTrace();
                }
                break;
            default:
        }
        return "redirect:/admin/tours";
    }

    private void setUser(HttpSession session, ModelMap modelMap) {
        if (session.getAttribute("user") != null) {
            UserDto dto = (UserDto) session.getAttribute("user");
            modelMap.addAttribute("dto", dto);
        }
    }

    private void setTopic(HttpSession session, ModelMap modelMap) {
        if (session.getAttribute("topic") != null) {
            TopicDto topics = (TopicDto) session.getAttribute("topic");
            modelMap.addAttribute("topics", topics);
        }
    }

}
