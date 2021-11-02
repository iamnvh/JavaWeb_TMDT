package shop.controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import shop.dto.ProductSearchModel;
import shop.entities.Product;
import shop.services.CategoryService;
import shop.services.ProductService;

@Controller
public class ListProductController extends BaseController{
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@RequestMapping(value = {"/list-product"}, method = RequestMethod.GET)
	public String list_product(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		ProductSearchModel sm = new ProductSearchModel();
		List<Product> products = productService.search(sm);
		model.addAttribute("category", categoryService.findAll());
		model.addAttribute("product", products);
		return "user/list-product";
	}
	@RequestMapping(value = { "/search-product" }, method = RequestMethod.GET)
	public String search(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		String searchText = request.getParameter("searchText");
		ProductSearchModel sm = new ProductSearchModel();
		sm.setSearchText(searchText);
		List<Product> products = productService.search(sm);
		model.addAttribute("category", categoryService.findAll());
		model.addAttribute("product", products);
		return "user/list-product";
	}
	@RequestMapping(value = { "/search-price" }, method = RequestMethod.GET)
	public String search_price(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		//double pr1 = Double.parseDouble(request.getParameter("price1"));
		//double pr2 = Double.parseDouble(request.getParameter("price2"));
		ProductSearchModel sm = new ProductSearchModel();
		sm.setPrice1(request.getParameter("price1"));
		sm.setPrice2(request.getParameter("price2"));
		
		List<Product> products = productService.search(sm);
		model.addAttribute("category", categoryService.findAll());
		model.addAttribute("product", products);
		return "user/list-product";
	}
//	@Autowired
//	private ProductRepository repository;
//	@RequestMapping(value = {"/list-product"}, method = RequestMethod.GET)
//	public String list_product_page(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
//			@RequestParam(name = "page", required = false) Integer page,
//		      @RequestParam(name = "size", required = false, defaultValue = "8") Integer size) {
//		Pageable pageable = PageRequest.of(page, size); 	
//		model.addAttribute("pagesize",100/size);
//		
//		int pageIndex = pageable.getPageNumber();
//		System.out.println("pageintdex: " + pageIndex);
//		if(pageIndex < 0) {
//			pageIndex = 0;	
//		}
//		model.addAttribute("pageno",pageable.getPageNumber());
//		
//		return "user/list-product";
//	}
}