package com.etc.dao;

import com.etc.bean.Orders;
import com.etc.bean.OrdersExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface OrdersMapper {
    int countByExample(OrdersExample example);

    int deleteByExample(OrdersExample example);

    int deleteByPrimaryKey(String oid);

    int insert(Orders record);

    int insertSelective(Orders record);

    List<Orders> selectByExample(OrdersExample example);

    Orders selectByPrimaryKey(String oid);

    int updateByExampleSelective(@Param("record") Orders record, @Param("example") OrdersExample example);

    int updateByExample(@Param("record") Orders record, @Param("example") OrdersExample example);

    int updateByPrimaryKeySelective(Orders record);

    int updateByPrimaryKey(Orders record);

    String findOrdertimeByOid(String oid);

	List<Orders> selectByOid(String oid);

	List<Orders> findOrderByUid(Integer uid);

	void delectOrder(String oid);

	List<Orders> findOrderByState(Integer state);


	
}