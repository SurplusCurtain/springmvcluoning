package cap.controller;

import cap.model.MyFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Date;

@Controller
@RequestMapping("/")
public class FormatController {

    @RequestMapping(value = "/format", method = RequestMethod.GET)
    public String format(Model model) {
        if (!model.containsAttribute("format")) {
            MyFormat format = new MyFormat();
            format.setTotalCount(10000);
            format.setDiscount(0.51);
            format.setSumMoney(10000.13);
            format.setRegisterDate(new Date(2018 - 100, 11, 25));
            format.setOrderDate(new Date(2018 - 100, 11, 25, 20, 18, 18));
            model.addAttribute("format", format);
        }

        return "format";

    }

}
