package vn.nuce.controllers.tour;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import vn.nuce.dto.TourDto;
import vn.nuce.service.impl.CookieService;
import vn.nuce.service.impl.TourServiceImpl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RequestMapping("/tour")
@Controller
public class tourDetailController {
    @Autowired
    TourServiceImpl service;
    @Autowired
    CookieService cookie;

    @GetMapping("/tourDetail/{id}")
    public String showDetailTourById(@PathVariable Long id, HttpSession session, ModelMap modelMap) {
       // chi tiêt tour
        TourDto dto = service.findOneTour(id);
        modelMap.addAttribute("tour", dto);
      // list 3 tour mới nhất
        List<TourDto> tours = new ArrayList<>();
        try {
            tours = service.findTop3();
        } catch (Exception e) {
            e.printStackTrace();
        }
        modelMap.addAttribute("tours", tours);
        if (session.getAttribute("status") != null) {
            modelMap.addAttribute("status", session.getAttribute("status"));
            session.removeAttribute("status");
        }


        // đọc cookies( tour yêu thích)
        Cookie favo = cookie.read("favorite");
        if (favo  != null){
            String ids = favo.getValue();
            List<TourDto> favo_list = service.findByFavorite(ids);
            modelMap.addAttribute("favo",favo_list);
        }

        Cookie viewed = cookie.read("viewed");
        String value = id.toString();
        if (viewed  != null){
            value = viewed.getValue();
           value += "," + id.toString();
        }
        cookie.create("viewed",value,10);
        List<TourDto> viewed_list = service.findByFavorite(value);
        modelMap.addAttribute("viewed",viewed_list);

        return "tour/tour_detail";
    }
}
