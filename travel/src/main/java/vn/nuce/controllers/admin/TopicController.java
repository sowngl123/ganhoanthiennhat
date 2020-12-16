package vn.nuce.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import vn.nuce.dto.TopicDto;
import vn.nuce.dto.UserDto;
import vn.nuce.service.impl.TopicServiceImpl;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.List;

@RequestMapping("/admin")
@Controller
public class TopicController {

    @Autowired
    TopicServiceImpl service;

    @GetMapping("/topic")
    public String showPage(HttpSession session, ModelMap modelMap) {
        setUser(session, modelMap);
        if (session.getAttribute("topic") != null) {
            TopicDto topic = (TopicDto) session.getAttribute("topic");
            modelMap.addAttribute("topic", topic);
        }
        List<TopicDto> topicDtos = service.findAllTopic();
        modelMap.addAttribute("topics", topicDtos);
        if (session.getAttribute("status") != null) {
            modelMap.addAttribute("status",session.getAttribute("status"));
            session.removeAttribute("status");
        }
        return "/admin/topic";
    }

    @GetMapping("/topic/{id}")
    @ResponseBody
    public TopicDto getTopicDto(@PathVariable Long id) {
        return service.findOneTopic(id);
    }


    @PostMapping("/topic/{action}")
    public String insertImage(@PathVariable String action,
                              @RequestParam(name = "topic_ID") Long topic_ID,
                              @RequestParam(name = "topic_Name") String topic_Name,
                              HttpSession session) {
        TopicDto dto = new TopicDto();
        dto.setTopic_Name(topic_Name);

        switch (action) {
            case "create":
                try {
                    service.saveTopic(dto);
                    session.setAttribute("status", "success");
                }
                catch (Exception e) {
                    session.setAttribute("status", "fail");
                    e.printStackTrace();
                }
                break;
            case "update":
                try {
                    dto.setTopic_ID(topic_ID);
                    service.updateTopic(dto);
                    session.setAttribute("status", "success");
                }
                catch (Exception e) {
                    session.setAttribute("status", "fail");
                    e.printStackTrace();
                }
                break;
        }
        return "redirect:/admin/topic";
    }

    private void setUser(HttpSession session, ModelMap modelMap) {
        if (session.getAttribute("user") != null) {
            UserDto dto = (UserDto) session.getAttribute("user");
            modelMap.addAttribute("dto", dto);
        }
    }
}
