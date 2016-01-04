package com.wkt.dao;

import java.util.List;

import com.wkt.models.User;

public interface UserDao {

	User findByName(String name);

	List<User> findAll();

}