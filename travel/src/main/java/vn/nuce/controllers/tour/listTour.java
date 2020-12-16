package vn.nuce.controllers.tour;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import vn.nuce.bean.MailInfo;
import vn.nuce.dto.TourDto;
import vn.nuce.dto.UserDto;
import vn.nuce.entity.TourEntity;
import vn.nuce.repository.impl.TourRepositoryImpl;
import vn.nuce.service.MailService;
import vn.nuce.service.impl.CookieService;
import vn.nuce.service.impl.TourServiceImpl;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("/list")
@Controller
public class listTour {



    @Autowired
    CookieService cookie;
    @Autowired
    MailService mail;
    @Autowired
    TourRepositoryImpl dao;

    @Autowired
    TourServiceImpl service;
    @GetMapping
    public ModelAndView listOfUsers(@RequestParam(required = false) Integer page) {
        ModelAndView modelAndView = new ModelAndView("list/listTour");
        List<TourDto> tour = service.findAllTours();
        PagedListHolder<TourDto> pagedListHolder = new PagedListHolder<>(tour);
        pagedListHolder.setPageSize(4);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());
        if(page==null || page < 1 || page > pagedListHolder.getPageCount())page=1;

        modelAndView.addObject("page", page);
        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            pagedListHolder.setPage(0);
            modelAndView.addObject("tours", pagedListHolder.getPageList());
        }
        else if(page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page-1);
            modelAndView.addObject("tours", pagedListHolder.getPageList());
        }
        return modelAndView;
    }

   /* public String showPage(HttpSession session, ModelMap modelMap) {
        UserDto dto = null;
        if (session.getAttribute("user") != null) {
            dto = (UserDto) session.getAttribute("user");
        }
        if (dto != null) {
            modelMap.addAttribute("dto", dto);
        }
        setUser(session, modelMap);
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
        return "list/listTour";
    }*/


    private void setUser(HttpSession session, ModelMap modelMap) {
        if (session.getAttribute("user") != null) {
            UserDto dto = (UserDto) session.getAttribute("user");
            modelMap.addAttribute("dto", dto);
        }
    }

    @ResponseBody
    @GetMapping("/add-tofavo/{id}")
    public boolean addToFavorite(Model model, @PathVariable("id") Integer id){
        Cookie favo = cookie.read("favorite");
        String value = id.toString();
        if (favo != null){
            value = favo.getValue();
            if(!value.contains(id.toString())){
                value += ','+id.toString();
            }
            else {
                return  false;
            }
        }
        cookie.create("favorite",value,30);
        return true;
    }
    @ResponseBody
    @GetMapping("/send-to-friend")
    public boolean sendToFriend(Model model, MailInfo info, HttpServletRequest request){
        //send mail
        info.setSubject("Thông tin hàng hóa");
        try {
            String id = request.getParameter("id");
            String link = request.getRequestURL().toString().replace("/list/send-to-friend","/tour/tourDetail/"+id);
           info.setBody(info.getBody()+"<hr><a href='"+link+"'>Xem chi tiết ...</a>");
           mail.send(info);
            return true;
        }
        catch (Exception e){
            e.printStackTrace();
            return false;
        }

    }
   /* int pageSize = 3;
    @ResponseBody
    @GetMapping("/page-count")
    public Long pageCount(){
       return  dao.getPageCount(pageSize);
    }

    @ResponseBody
    @GetMapping("/page-count/page/{pageNo}")
    public  List<TourEntity> getPage(@PathVariable("pageNo") int pageNo){
       List<TourEntity> list = dao.getPage(pageNo,pageSize);
        return list;
    }*/

  /*  @GetMapping("/page/{pageid}")
    public String edit(@PathVariable int pageid,Model m){
        int total=5;
        if(pageid==1){}
        else{
            pageid=(pageid-1)*total+1;
        }
        System.out.println(pageid);
        List<TourEntity> tours = dao.getPage(pageid,total);
        m.addAttribute("tours", tours);
        return "list";
    }*/






    @PostMapping("/list-by-keyword")
     public  String listByKeywords (Model model, @RequestParam("keywords") String keywords){
        List<TourEntity> tours = dao.findByKeyword(keywords);
        model.addAttribute("tours", tours);
        return "list/listTour";
    }

    // Sắp xếp theo ngày , theo giá trong trang list
    @GetMapping("/special/{id}")
    public  String listBySpecial (Model model, @PathVariable("id") Integer id){
        List<TourEntity> tours = dao.findBySpecial(id);
        model.addAttribute("tours", tours);
        return "list/listTour";
    }

}
