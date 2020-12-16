package vn.nuce.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import vn.nuce.dto.BookTourDto;
import vn.nuce.dto.RestaurantDto;
import vn.nuce.dto.TourDto;
import vn.nuce.dto.UserDto;
import vn.nuce.service.impl.BookTourServiceImpl;
import vn.nuce.service.impl.TourServiceImpl;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/admin")
@Controller
public class OrderTourController {

    @Autowired
    BookTourServiceImpl service;

    @Autowired
    TourServiceImpl serviceTour;

    @GetMapping("/ordertour")
    public String showPageDefault( HttpSession session, ModelMap modelMap) {
        setUser(session, modelMap);
        setTour(session, modelMap);
        if (session.getAttribute("order") != null) {
            BookTourDto dto = (BookTourDto) session.getAttribute("order");
            modelMap.addAttribute("dto", dto);
        }
        List<BookTourDto> bookTourDtos1 = new ArrayList<>();
        List<BookTourDto> bookTourDtos = service.findAllByStatus0();

        for (BookTourDto book: bookTourDtos){
            book.setTourName(service.findTour(book.getRegistration_Id()).getTour_Name());
            bookTourDtos1.add(book);
        }
        modelMap.addAttribute("orders", bookTourDtos1);
        if (session.getAttribute("status") != null) {
            modelMap.addAttribute("status",session.getAttribute("status"));
            session.removeAttribute("status");
        }
        return "/admin/ordertour";
    }

    @GetMapping("/listaccepted")
    public String showListAccpected(HttpSession session, ModelMap modelMap) {
        setUser(session, modelMap);
        setTour(session, modelMap);
        if (session.getAttribute("order") != null) {
            BookTourDto dto = (BookTourDto) session.getAttribute("order");
            modelMap.addAttribute("dto", dto);
        }

        List<BookTourDto> bookTourDtos1 = new ArrayList<>();
        List<BookTourDto> bookTourDtos = service.findAllByStatus1();

        for (BookTourDto book: bookTourDtos){
            book.setTourName(service.findTour(book.getRegistration_Id()).getTour_Name());
            bookTourDtos1.add(book);
        }
        modelMap.addAttribute("orders", bookTourDtos1);
        if (session.getAttribute("status") != null) {
            modelMap.addAttribute("status",session.getAttribute("status"));
            session.removeAttribute("status");
        }
        return "/admin/listaccepted";
    }

    @GetMapping("/declinedlist")
    public String showDeclinedList(HttpSession session, ModelMap modelMap) {
        setUser(session, modelMap);
        setTour(session, modelMap);
        if (session.getAttribute("order") != null) {
            BookTourDto dto = (BookTourDto) session.getAttribute("order");
            modelMap.addAttribute("dto", dto);
        }
        List<BookTourDto> bookTourDtos1 = new ArrayList<>();
        List<BookTourDto> bookTourDtos = service.findAllByStatus2();

        for (BookTourDto book: bookTourDtos){
            book.setTourName(service.findTour(book.getRegistration_Id()).getTour_Name());
            bookTourDtos1.add(book);
        }
        modelMap.addAttribute("orders", bookTourDtos1);
        if (session.getAttribute("status") != null) {
            modelMap.addAttribute("status",session.getAttribute("status"));
            session.removeAttribute("status");
        }
        return "/admin/declinedlist";
    }

    @GetMapping("/ordertour/{id}")
    @ResponseBody
    public BookTourDto getRestaurantDto(@PathVariable Long id) {
        return service.findOneOrder(id);
    }



    @PostMapping("/ordertour/{action}")
    public String saveUser(@PathVariable String action,
                           @RequestParam(name = "registration_Id") Long registration_Id,
                           @RequestParam(name = "name") String name,
                           @RequestParam(name = "email") String email,
                           @RequestParam(name = "phone") String phone,
                           @RequestParam(name = "note") String note,
                           @RequestParam(name = "tourId") Long tourId,
                           @RequestParam(name = "userId") Long userId,
                           @RequestParam(name = "numAdult") Integer numAdult,
                           @RequestParam(name = "numChild") Integer numChild,
                           @RequestParam(name = "price") Long price,
                           @RequestParam(name = "payStatus") Integer payStatus,
                           @RequestParam(name = "status") Integer status,
                           HttpSession session) {
        BookTourDto bookTourDto = new BookTourDto();
        bookTourDto.setPayStatus(payStatus);
        bookTourDto.setStatus(status);
        bookTourDto.setName(name);
        bookTourDto.setEmail(email);
        bookTourDto.setPhone(phone);
        bookTourDto.setNote(note);
        bookTourDto.setTourId(tourId);
        bookTourDto.setUserId(userId);
        bookTourDto.setNumAdult(numAdult);
        bookTourDto.setNumChild(numChild);
        bookTourDto.setPrice(price);
        bookTourDto.setRegistration_Id(registration_Id);
        switch (action) {
            case "create":
                try {
                    Timestamp lasttimestampz = new Timestamp(System.currentTimeMillis());
                    bookTourDto.setCreateDate(lasttimestampz);
                    bookTourDto.setDateConfirm(lasttimestampz);
                    service.save(bookTourDto);
                    session.setAttribute("status","success");
                }
                catch (Exception e) {
                    session.setAttribute("status", "fail");
                    e.printStackTrace();
                }
                break;
            case "update":
                try {
                    bookTourDto.setRegistration_Id(registration_Id);
                    Timestamp lasttimestamp = new Timestamp(System.currentTimeMillis());
                    bookTourDto.setCreateDate(lasttimestamp);
                    bookTourDto.setDateConfirm(lasttimestamp);
                    service.updateOrder(bookTourDto);
                    session.setAttribute("status","success");
                }
                catch (Exception e) {
                    session.setAttribute("status", "fail");
                    e.printStackTrace();
                }

                break;
        }
        return "redirect:/admin/ordertour";
    }



    private void setUser(HttpSession session, ModelMap modelMap) {
        if (session.getAttribute("user") != null) {
            UserDto dto = (UserDto) session.getAttribute("user");
            modelMap.addAttribute("dto", dto);
        }
    }
    private void setTour(HttpSession session, ModelMap modelMap) {
        if (session.getAttribute("tour") != null) {
            TourDto tour = (TourDto) session.getAttribute("tour");
            modelMap.addAttribute("tour", tour);
        }
        List<TourDto> tours = serviceTour.findAllTours();
        modelMap.addAttribute("tours", tours);

    }
}
