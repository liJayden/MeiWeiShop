package com.etc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.bean.User;
import com.etc.bean.UserExample;
import com.etc.bean.UserExample.Criteria;
import com.etc.dao.UserMapper;

@Service
public class RegisterService {

	@Autowired
	UserMapper userMapper;

	public int register(User record) {
		return userMapper.insert(record);

	}

	public User active(String code) {
		List<User> list = userMapper.findByCode(code);
		if (list != null && list.size() > 0) {
			return list.get(0);
		}
		return null;
	}

	public void updateById(User existUser) {
		System.out.println(existUser.getCode());
		userMapper.updateById(existUser);
	}
	
	public boolean login (User user){
		User u = userMapper.login(user);
		if(u!=null){
			return true;
		}
		return false;
	}
	
	public int selectByName(String name){
	  return userMapper.selectByName(name);
	}
	
	public User findByUsername(String username){
		return userMapper.findByUsername(username);
	}

	public void updateStateByName(User user) {
		userMapper.updateStateByName(user);
	}

	public void updateStateByName2(String username) {
		userMapper.updateStateByName2(username);		
	}

	public Integer findStateByName(String username) {
		return userMapper.findStateByName(username);
	}

	public void updatePosswordByPhone(User user) {
		 userMapper.updatePosswordByPhone(user);
	}

	public boolean registerService(String phone) {
		UserExample userexample=new UserExample();
		Criteria criteria=userexample.createCriteria();
		criteria.andPhoneEqualTo(phone);
		long count=userMapper.countByExample(userexample);
		return count==1;		
	}

	public List<User> selectByUid(Integer uid) {
		return userMapper.selectByUid(uid);		
	}

	public int updateStateByUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateById(user);
	}

	public String findMailbyUsername(String username) {
			return userMapper.findMailbyUsername(username);
	}
	
	/**
	 * 修改登录状态，解锁账号
	 * @param code
	 *//*
	public void updateStateByNames(String code) {
		userMapper.updateStateByNames(code);
	}
*/
}
