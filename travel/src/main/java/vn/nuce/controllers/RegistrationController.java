package vn.nuce.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import vn.nuce.dto.UserDto;
import vn.nuce.service.impl.UserServiceImpl;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

@Controller
public class RegistrationController {

    @Autowired
    UserServiceImpl service;

    @GetMapping("/registration")
    public String showPageDefault(ModelMap modelMap) {
        List<UserDto> userDtos = service.findAllUsers();
        List<String> emails = new ArrayList<>();
        List<String> phones = new ArrayList<>();
        for (UserDto userDto : userDtos) {
            emails.add(userDto.getUser_Email());
            phones.add(userDto.getUser_Phone());
        }
        modelMap.addAttribute("listEmail", emails);
        modelMap.addAttribute("listPhone", phones);

        return "registration";
    }

    @PostMapping("/registration")
    public String saveUser(
                           @RequestParam(name = "user_Name") String user_Name,
                           @RequestParam(name = "user_Password") String user_Password,
                           @RequestParam(name = "REuser_Password") String REuser_Password,
                           @RequestParam(name = "user_Role") Integer user_Role,
                           @RequestParam(name = "user_Email") String user_Email,
                           @RequestParam(name = "user_Status") Integer user_Status,
                           @RequestParam(name = "user_Gender") Integer user_Gender,
                           HttpSession session) {
        UserDto userDto = new UserDto();
            List<UserDto> dtos = service.findAllUsers();
            userDto.setUser_Name(user_Name);
            userDto.setUser_Password(user_Password);
            userDto.setUser_Email(user_Email);
            userDto.setUser_Status(user_Status);
            userDto.setUser_Role(user_Role);
            userDto.setUser_Gender(user_Gender);
            userDto.setUser_Phone(user_Name);
            Timestamp timestamp = new Timestamp(System.currentTimeMillis());
            userDto.setUser_Createdate(timestamp);
            userDto.setUser_Lastupdate(timestamp);
            if (REuser_Password.equals(user_Password)){
                service.saveUser(userDto);
                session.setAttribute("status","success");
            } else {
                session.setAttribute("status","fail");
            }
        return "redirect:/login";

    }


}
