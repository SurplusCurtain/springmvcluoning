package cap.controller;

import cap.model.Admin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/")
public class FormController {
    @RequestMapping(value = "/form", method = RequestMethod.GET)
    public ModelAndView form() {
        ModelAndView modelAndView = new ModelAndView();
        Admin admin = new Admin();
        admin.setUsername("咻咻咻");
        admin.setAge(22);
        admin.setSelected(true);
        List<String> roles = new ArrayList<String>();
        roles.add("role2");
        roles.add("role3");
        admin.setRoles(roles);
        admin.setSex(1);
        admin.setIntroduction("你忙吧，我吃柠檬 ");
        admin.setFavorite(4);

        Map<String, String> roleMap = new HashMap<String, String>();
        roleMap.put("role1", "二哈 1");
        roleMap.put("role2", "金毛 2");
        roleMap.put("role3", "柯基 3");

        Map<Integer, String> ballMap = new HashMap<Integer, String>();
        ballMap.put(1, "巴斯K提波");
        ballMap.put(2, "福特波");
        ballMap.put(3, "乒乓波");
        ballMap.put(4, "安索");
        ballMap.put(5, "特尼斯波");


        modelAndView.addObject("admin", admin);
        modelAndView.addObject("roleMap", roleMap);
        modelAndView.addObject("ballMap", ballMap);
        modelAndView.setViewName("form");


        return modelAndView;

    }
}
