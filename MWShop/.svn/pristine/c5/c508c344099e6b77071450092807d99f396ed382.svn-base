package com.etc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.bean.Adminuser;
import com.etc.dao.AdminuserMapper;

@Service
public class AdminuserService {
	
	@Autowired
	AdminuserMapper adminuserMapper;

	public boolean login(Adminuser adminuser) {
		Adminuser a =adminuserMapper.login(adminuser);
		if(a!=null){
			return true;
		}
		return false;
	}
}
