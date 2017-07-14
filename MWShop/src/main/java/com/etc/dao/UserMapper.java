package com.etc.dao;

import com.etc.bean.User;
import com.etc.bean.UserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    int countByExample(UserExample example);

    int deleteByExample(UserExample example);

    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    int insertSelective(User record);

    List<User> selectByExample(UserExample example);

    User selectByPrimaryKey(Integer uid);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    

    List<User> findByCode(String code);
    
    int updateById(User existUser);
    
    User login(User user);
    
    int selectByName(String username);
    
    User findByUsername(String username);

	void updateStateByName(User user);

	void updateStateByName2(String username);

	Integer findStateByName(String username);

	void updatePosswordByPhone(User user);

	List<User> selectByUid(Integer uid);

	String findMailbyUsername(String username);

}