package com.nildev.bhaktirealestate.service;

import com.nildev.bhaktirealestate.domain.User;

public interface UserService {

	public User findByUserName(String userName);
	
	public User findByUserId(long userId);
}
