package com.jk.dao;

import com.jk.model.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by lyc on 2018/4/3.
 */
public interface UserMapper {

    List<User> queryUserList(@Param("user")User user);

    void addUser(@Param("user")User user);

    User loginUser(@Param("user") User user);

}
