package com.etc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etc.bean.Product;
import com.etc.dao.ProductMapper;

@Service
public class ProductService {
	
	@Autowired
	ProductMapper productMapper;
	
	public List<Product> findProductByPid(Integer pid){
		return productMapper.findProductByPid(pid);
	}
	
	public List<Product> findProductIsHot(Integer is_hot){
		return productMapper.findProductIsHot(is_hot);
	}
	
	public Product findProductKey(Integer pid){
		return productMapper.selectByPrimaryKey(pid);
	}

	public List<Product> selectProductByCategoryID(Integer csid) {
		return productMapper.selectProductByCategoryID(csid);
	}
	
	public List<Product> selectAllProduct(){
		return productMapper.selectAllProduct();		
	}
	
	public int deleteProductById(Integer pid){
		return productMapper.deleteByPrimaryKey(pid);
		
	}

	public void saveProduct(Product product) {
		productMapper.insertSelective(product);
	}

	public List<Product> findProductByName(String pname) {
		return productMapper.findProductByName(pname);
	}

	public int eidtProduct(Product product) {
		return productMapper.updateByPrimaryKeySelective(product);		
	}

	public List<String> sreachPname(String pname) {
		return productMapper.sreachPname(pname);
	}

}
