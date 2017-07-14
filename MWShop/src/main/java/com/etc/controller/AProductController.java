package com.etc.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.etc.bean.Categorysecond;
import com.etc.bean.Product;
import com.etc.service.AffterCategorySecondService;
import com.etc.service.ProductService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("AProductController")
public class AProductController {

	@Autowired
	ProductService productService;
	@Autowired
	AffterCategorySecondService affterCategorySecondService;

	private static final String MAIN = "aproduct_list";

	/**
	 * 后台商品分页功能
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("selectAllProduct")
	public ModelAndView selectAllProduct(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		ModelAndView mav = new ModelAndView(MAIN);
		// 指定PageHelper当前页,每页显示长度
		PageHelper.startPage(pn, 4);
		// 查询数据库product表所有数据
		List<Product> list = productService.selectAllProduct();
		// 绑定PageInfo
		@SuppressWarnings("rawtypes")
		PageInfo pageInfo = new PageInfo(list, 5);
		// 添加PageInfo
		mav.addObject("pageInfo", pageInfo);
		return mav;
	}

	// 后台商品删除功能
	@RequestMapping("deleteProductById")
	public ModelAndView deleteProductById(@RequestParam(value = "pid", defaultValue = "1") Integer pid) {
		ModelAndView mav = new ModelAndView("redirect:/AProductController/selectAllProduct");
		int num = productService.deleteProductById(pid);
		return mav;
	}

	@RequestMapping("saveProduct")
	public String saveProduct(Product product, MultipartFile pictureFile) throws IOException {
		
		//product.setPdate(new Date());
		
		// 1. 获取图片完整名称
		String fileStr = pictureFile.getOriginalFilename();
		// 2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
		String newfileName = UUID.randomUUID().toString() + fileStr.substring(fileStr.lastIndexOf("."));
		// 3. 将图片保存到硬盘
		pictureFile.transferTo(new File("C:\\Users\\Administrator\\Desktop\\MWShop\\src\\main\\webapp\\img\\product\\" + newfileName));
		newfileName="img/product/"+newfileName;
		// 4.将图片名称保存到数据库
		product.setImage(newfileName);
		productService.saveProduct(product);
		return "forward:/AProductController/selectAllProduct";
	}
	
	/**
	 * 模糊查询商品
	 */
	@RequestMapping("findProductByName")
	public ModelAndView findProductByName(String pname,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
		
		ModelAndView mav = new ModelAndView(MAIN);
		// 指定PageHelper当前页,每页显示长度
		PageHelper.startPage(pn, 4);
		// 模糊查询数据库prduct表所有数据
		List<Product> findProductByName = productService.findProductByName(pname);
		// 绑定PageInfo
		@SuppressWarnings("rawtypes")
		PageInfo pageInfo = new PageInfo(findProductByName, 5);
		// 添加PageInfo
		mav.addObject("pageInfo", pageInfo);
		return mav;
	}
	
	@RequestMapping("loadPid")
	public String loadPid(Integer pid,Model model){
		model.addAttribute("pid", pid);
		List<Product> productList = productService.findProductByPid(pid);
		List<Categorysecond> categoryseconds=affterCategorySecondService.getCategorySencond();
		model.addAttribute("categoryseconds", categoryseconds);
		model.addAttribute("productList", productList);
		return "aProductEdit";
	}
	
	@RequestMapping("eidtProduct")
	public String eidtProduct(Product product, MultipartFile pictureFile) throws IOException {
		
		// 1. 获取图片完整名称
		String fileStr = pictureFile.getOriginalFilename();
		// 2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
		String newfileName = UUID.randomUUID().toString() + fileStr.substring(fileStr.lastIndexOf("."));
		// 3. 将图片保存到硬盘
		pictureFile.transferTo(new File("F:\\EclipseWorkSpace\\MWShop\\src\\main\\webapp\\img\\product\\" + newfileName));
		newfileName="img/product/"+newfileName;
		// 4.将图片名称保存到数据库
		productService.eidtProduct(product);
		return "forward:/AProductController/selectAllProduct";
	}
}	
