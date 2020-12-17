package vn.nuce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import vn.nuce.dto.UserDto;
import vn.nuce.service.impl.UserServiceImpl;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    UserServiceImpl service;

    @GetMapping("/login")
    public String showPageDefault(ModelMap modelMap) {
        return "login";
    }

    @PostMapping("/login")
    public String checkLoginAccount(@RequestParam(name = "user_Name") String user_Name,
                                    @RequestParam(name = "user_Password") String user_Password
            , HttpSession session, ModelMap modelMap) {
        Object[] objects = service.checkLogin(user_Name, user_Password);
            if (objects != null) {
                boolean isSuccess = (boolean) objects[0];
                if (isSuccess) {
                    UserDto dto = (UserDto) objects[1];
                    session.setAttribute("user", dto);
                    return checkRoleAccount(dto.getUser_Role());
                } else {
                    modelMap.addAttribute("error", "Tên tài khoản hoặc mật khẩu không chính xác!");
                }
            }

        return "login";
    }

    @GetMapping("/logout")
    public String logoutAccount(HttpSession session) {
        if (session.getAttribute("user") != null) {
            session.removeAttribute("user");
        }
        return "redirect:/login";
    }

    private String checkRoleAccount(Integer role) {
        if (role == 0) {
            return "redirect:/home";
        } else if (role == 1) {
            return "redirect:/admin/tours";
        } else if (role == 2) {
            return "redirect:/admin/home";
        }
        return "redirect:/home";
    }
}
