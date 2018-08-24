package com.self.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.self.dao.MessageMapper;
import com.self.pojo.Address;
import com.self.pojo.Lawyer;
import com.self.pojo.Message;
import com.self.pojo.Page;
@Service
public class MessageServiceImpl implements IMessageService {

	@Autowired
	private MessageMapper messageMapper;

	public List<Lawyer> findMessage() {

		List<Lawyer> message = messageMapper.findMessage();
		return message;
	}

	public List<Address> getAddress(Page page) {
		List<Address> list = messageMapper.getAddress(page);
		return list;
	}

}
