package shop.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.controller.user.BaseController;
import shop.entities.Contact;
import shop.entities.SaleOrder;
import shop.services.ContactService;

@Controller
public class AdminContactController extends BaseController{
	@Autowired
	private ContactService contactService;
	@RequestMapping(value = "/admin/manage_contact", method = RequestMethod.GET)
	public String manageCart(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		List<Contact> contacts= contactService.findAll();
		
		model.addAttribute("contact", contacts);
		return "admin/manage-contact";
	}
}
