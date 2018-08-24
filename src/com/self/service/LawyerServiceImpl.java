package com.self.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.self.dao.AddressMapper;
import com.self.pojo.Address;
import com.self.pojo.Lawyer;

@Service
public class LawyerServiceImpl implements ILawyerService{

	@Autowired
	private AddressMapper addressMapper;
	
	public List<Address> getAddress() {
		List<Address> address = this.addressMapper.getAddress();
		return address;
	}

	public void saveMessage(Lawyer lawyer) {
		this.addressMapper.saveMessage(lawyer);
	}

}
