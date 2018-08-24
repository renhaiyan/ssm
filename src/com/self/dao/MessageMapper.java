package com.self.dao;

import java.util.List;

import com.self.pojo.Address;
import com.self.pojo.Lawyer;
import com.self.pojo.Message;
import com.self.pojo.Page;

public interface MessageMapper {

	public List<Lawyer> findMessage();
	
	public List<Address> getAddress(Page page);
}
