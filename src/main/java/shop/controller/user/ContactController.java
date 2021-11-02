package shop.controller.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.entities.Contact;
import shop.services.CategoryService;
import shop.services.ContactService;

@Controller
public class ContactController extends BaseController {
	@Autowired
	private ContactService contactService;
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("contact", new Contact());
		model.addAttribute("category", categoryService.findAll());
		return "user/contact";
	}
	@RequestMapping(value = { "/about" }, method = RequestMethod.GET)
	public String about(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		return "user/about";
	}
	@RequestMapping(value = { "/blog" }, method = RequestMethod.GET)
	public String blog(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		return "user/blog";
	}
	
/*	@RequestMapping(value = { "/contact-ajax" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contact_ajax(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String message = request.getParameter("message");


		Map<String, Object> jsonResult = new HashMap<String, Object>();
		
		Contact contact = new Contact();
		contact.setFirstName(firstName);
		contact.setLastName(lastName);
		contact.setEmail(email);
		contact.setMessage(message);
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		
		contactService.saveOrUpdate(contact);
		return ResponseEntity.ok(jsonResult);
		
	}*/
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String contact1(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		Contact contact = new Contact();
		contact.setFirstName(firstName);
		contact.setLastName(lastName);
		contact.setEmail(email);
		contact.setMessage(message);
		contactService.saveOrUpdate(contact);
		return "user/index";
	}
}
