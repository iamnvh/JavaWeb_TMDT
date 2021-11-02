package shop.controller.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dto.ProductSearchModel;
import shop.entities.Product;
import shop.services.CategoryService;

@Controller
public class LoginController {

	@Autowired
	private CategoryService categoryService;
	@RequestMapping(value = {"/login"}, method = RequestMethod.GET)
	public String home(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("category", categoryService.findAll());
		return "user/login";
	}
	
}
