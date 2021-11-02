package shop.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entities.Product;
import shop.services.CategoryService;
import shop.services.ProductService;

@Controller
public class ProductDetailsController extends BaseController{
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = { "/product-details" }, method = RequestMethod.GET)
	public String product_details(final ModelMap model, final HttpServletRequest request,final HttpServletResponse response) {
		Product product = productService.getById(Integer.parseInt(request.getParameter("id")));
		model.addAttribute("category", categoryService.findAll());
		model.addAttribute("product", product);
		return "user/product-details";
	}
}