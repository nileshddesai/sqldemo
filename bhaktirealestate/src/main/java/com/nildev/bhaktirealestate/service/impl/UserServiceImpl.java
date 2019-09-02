package com.nildev.bhaktirealestate.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nildev.bhaktirealestate.domain.User;
import com.nildev.bhaktirealestate.repository.UserRepository;
import com.nildev.bhaktirealestate.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserRepository userRepository;
	
	@Override
	public User findByUserName(String userName) {
		return userRepository.findByUserName(userName);
	}

	@Override
	public User findByUserId(long userId) {
		return userRepository.findByUserId(userId);
	}

}
