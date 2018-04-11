package com.jk.controller;

import com.jk.model.User;
import com.jk.service.IUserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.util.List;


/**
 * Created by lyc on 2018/4/3.
 */

@Controller
@RequestMapping("/userController")
public class UserController extends BaseController {
    //日志记录
    private static final Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    private IUserService userService;

    @RequestMapping("/queryUserList")
    public void queryUserList(User user, HttpServletResponse response) {
        List<User> userList = userService.queryUserList(user);
        System.out.print(userService);
        super.writeJson(userList, response);
    }

    //userController/jumpUserList.jhtml
    @RequestMapping("/jumpUserList")
    public String jumpUserList() {
        return "lyc/userListShow";
    }

    //jumpAddUser
    @RequestMapping("/jumpAddUser")
    public String jumpAddUser() {
        return "lyc/addUser";
    }

    //addUser
    @RequestMapping("/addUser")
    public void addUser(User user) {
        userService.addUser(user);
    }

    //loginUser
    @RequestMapping("/loginUser")
    @ResponseBody
    public String loginUser(User user) {
        User finduser=userService.loginUser(user);
        if (finduser != null) {
            return "yes";
        } else {
            return "not";
        }
    }
}
