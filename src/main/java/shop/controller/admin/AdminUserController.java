package shop.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.controller.user.BaseController;
import shop.entities.User;
import shop.services.RoleService;
import shop.services.UserService;


@Controller
public class AdminUserController extends BaseController {

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	/**
	 * action when user access page manage_user
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/admin/manage_user" }, method = RequestMethod.GET)
	public String manageUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		List<User> users = userService.findAll();
		// List<Role> roless = roleService.findAll();

		model.addAttribute("user", users);
		// model.addAttribute("role", roles);

		return "admin/manage-user";
	}

	/**
	 * action when user click icon adduser-> page add_user
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value = { "/admin/add_user" }, method = RequestMethod.GET)
	public String addUserPage(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {
		model.addAttribute("user", new User());

		model.addAttribute("roleList", roleService.findAll());
		return "admin/add-user";
	}

	/**
	 * action when user want save infor of user
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @param user
	 * @return
	 */
	@RequestMapping(value = { "/admin/add_user" }, method = RequestMethod.POST)
	public String addUser(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("user") User user) {
		//model.addAttribute("roleOfUser", roleService.findAll());
		userService.saveOrUpdate(user);

		return "redirect:/admin/add_user";
	}
}
