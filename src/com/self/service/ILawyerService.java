package com.self.service;

import java.util.List;

import com.self.pojo.Address;
import com.self.pojo.Lawyer;

/**
 * 获取律师地址
 * @author rhy
 * @2017-11-7 上午11:43:03
 * @version v1.0
 */
public interface ILawyerService {

	public List<Address> getAddress();

	public void saveMessage(Lawyer lawyer);
}
