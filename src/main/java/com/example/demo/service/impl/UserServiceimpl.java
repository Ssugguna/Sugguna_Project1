package com.example.demo.service.impl;

import com.example.demo.converter.UserConverter;
import com.example.demo.dto.UserDto;
import com.example.demo.entity.JobPortal;
import com.example.demo.repository.JobPortalRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.UserService;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class UserServiceimpl implements UserService {
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	JobPortalRepository jobPortalRepository;

	@Override
	public UserDto getUserById(Integer userId) {
		return UserConverter.entityToDto(userRepository.getOne(userId));
	}

	@Override
	public void saveUser(UserDto userDto) {
		userRepository.save(UserConverter.dtoToEntity(userDto));
	}

	@Override
	public List<UserDto> getAllUsers() {
		return userRepository.findAll().stream().map(UserConverter::entityToDto).collect(Collectors.toList());
	}

	@Override
	public List<JobPortal> getAllPortalUsers(JobPortal userDto) {
		// TODO Auto-generated method stub
		return jobPortalRepository.getJobPortals(userDto);
	}
}
