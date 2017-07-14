package com.etc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.etc.bean.Product;
import com.etc.bean.ProductResult;

@Repository
public class SearchProductDaoImpl{
	
	@Autowired
	SolrServer solrServer;
	

	public ProductResult queryProducts(SolrQuery solrQuery) throws Exception {
		// 查询并获取查询响应
		QueryResponse queryResponse = solrServer.query(solrQuery);
		// 从响应中获取查询结果集
		SolrDocumentList docList = queryResponse.getResults();
		
		// 创建返回结果对象
		ProductResult productResult = new ProductResult();
		List<Product> productList = new ArrayList<Product>();
		
		//遍历结果集
				if(docList != null){
					//获取总记录数
					productResult.setRecordCount(docList.getNumFound());
					for(SolrDocument doc : docList){
						Product product = new Product();
		
						product.setPid(Integer.parseInt((String) doc.get("id")));
						
						//获取高亮
						Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
						if(highlighting != null){
							List<String> list = highlighting.get(doc.get("id")).get("product_pname");
							if(list != null && list.size() > 0){
								product.setPname(list.get(0));
							} else {
								product.setPname(String.valueOf(doc.get("product_pname")));
							}
						} else {
							product.setPname(String.valueOf(doc.get("product_pname")));
						}
						
						if(doc.get("product_shopprice") != null && !"".equals(doc.get("product_shopprice"))){
							product.setShopprice((double) doc.get("product_shopprice"));
						}
						
						product.setCsid((Integer) doc.get("product_csid"));
						product.setImage((String) doc.get("product_image"));
						productList.add(product);
					}
					productResult.setProductList(productList);
				}
				return productResult;
		
	}

}
