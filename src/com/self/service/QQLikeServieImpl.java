package com.self.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.self.dao.QQLikeMapper;
import com.self.pojo.User;

@Service
public class QQLikeServieImpl implements IQQLikeService {

	@Autowired
	private QQLikeMapper qqlikeMapper;
	
	public List<User> getUser() {
		List<User> user = this.qqlikeMapper.getUser();
		return user;
	}

}
