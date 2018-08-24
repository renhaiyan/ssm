package com.self.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.self.pojo.Address;
import com.self.pojo.Lawyer;
import com.self.pojo.Message;
import com.self.pojo.Page;


public interface IMessageService {

	public List<Lawyer> findMessage();

	public List<Address> getAddress(Page page);
}
