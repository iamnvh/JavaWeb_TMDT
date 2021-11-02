package shop.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entities.Role;
import shop.entities.User;
import shop.services.CategoryService;
import shop.services.RoleService;
import shop.services.UserService;


@Controller
public class RegisterController extends BaseController{
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = {"/register"}, method = RequestMethod.GET)
	public String register(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response){
		model.addAttribute("category", categoryService.findAll());
		return "user/register";
	}
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public String addProduct_Post(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");

		User user = new User();
		user.setUserName(username);
		user.setEmail(email);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);
		user.setPassword(encoder.encode(password));
		
		Role role = roleService.GetRoleByName("GUEST");
        user.addRole(role);
		
		userService.saveOrUpdate(user);
		
		return "redirect:/login";
	}
}
