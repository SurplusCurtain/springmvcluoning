package cap.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


@RestController
@RequestMapping("/blog")
public class IndexController {

    //显示主页面
    @RequestMapping("/index")
    public ModelAndView index(ModelAndView mv){
        mv.setViewName("index");
        return mv;
    }


}
