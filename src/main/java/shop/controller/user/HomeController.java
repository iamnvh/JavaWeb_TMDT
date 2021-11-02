package shop.controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dto.ProductSearchModel;
import shop.dto.Subscribe;
import shop.entities.Product;
import shop.services.CategoryService;
import shop.services.ProductService;

@Controller
public class HomeController extends BaseController{
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = {"/home","/index"}, method = RequestMethod.GET)
	public String home(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		ProductSearchModel sm = new ProductSearchModel();
		List<Product> products = productService.search(sm);
		model.addAttribute("product", products);
		List<Product> newProduct = new ArrayList<Product>();
		for (int i = products.size() -1; i > products.size()- 9 ; i--) {
			newProduct.add(products.get(i));
		}
		model.addAttribute("newproduct", newProduct);
		sm.setIsHot(1);
		List<Product> hotProduct = productService.search(sm);
		model.addAttribute("hotproduct", hotProduct);
		model.addAttribute("category", categoryService.findAll());
		return "user/index";
	}
	@RequestMapping(value = {"/subscribe"}, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> subscribe(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@RequestBody Subscribe subscribe) {
		System.out.println("Subscribe[email]"+ subscribe.getEmail());
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		return ResponseEntity.ok(jsonResult);
	}
	@RequestMapping(value = { "/search" }, method = RequestMethod.GET)
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
	@RequestMapping(value = { "/category/{categorySeo}" }, method = RequestMethod.GET)
    public String category(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
            @PathVariable("categorySeo") String categorySeo) throws IOException {

        ProductSearchModel sm = new ProductSearchModel();
        sm.setCategorySeo(categorySeo);

        List<Product> products = productService.search(sm);

        model.addAttribute("category", categoryService.findAll());
        model.addAttribute("product", products);

        return "user/list-product";
    }
}
