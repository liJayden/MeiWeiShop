package com.etc.dao;

import com.etc.bean.Adminuser;
import com.etc.bean.AdminuserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdminuserMapper {
    int countByExample(AdminuserExample example);

    int deleteByExample(AdminuserExample example);

    int deleteByPrimaryKey(Integer aid);

    int insert(Adminuser record);

    int insertSelective(Adminuser record);

    List<Adminuser> selectByExample(AdminuserExample example);

    Adminuser selectByPrimaryKey(Integer aid);

    int updateByExampleSelective(@Param("record") Adminuser record, @Param("example") AdminuserExample example);

    int updateByExample(@Param("record") Adminuser record, @Param("example") AdminuserExample example);

    int updateByPrimaryKeySelective(Adminuser record);

    int updateByPrimaryKey(Adminuser record);

	Adminuser login(Adminuser adminuser);
}