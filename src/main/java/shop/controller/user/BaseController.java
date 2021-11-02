package shop.controller.user;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import shop.entities.User;
import shop.services.CategoryService;


public abstract class BaseController {
	@Autowired
	private CategoryService categoryService;
	
	/**
	 * check user is logined
	 * @return
	 */
	@ModelAttribute("isLogined")
	public boolean isLogined() {
		boolean isLogined= false;
		Object pricipal= SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(pricipal instanceof UserDetails) {
			isLogined=true;
		}
		return isLogined;
	}
	
	@ModelAttribute("userLogined")
	public User getUserLogined() {
		//get infor user logined through SecurityContextHolder
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		//check
		if(userLogined != null && userLogined instanceof UserDetails)
			return (User) userLogined;
		
		return null;
	}
}
