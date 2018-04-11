package com.jk.dao;

import com.jk.model.User;

import java.util.List;

/**
 * Created by lyc on 2018/4/3.
 */
public interface UserMapper {

    List<User> queryUserList(User user);

    void addUser(User user);
}
