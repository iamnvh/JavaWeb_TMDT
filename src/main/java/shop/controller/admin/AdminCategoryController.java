package shop.controller.admin;

import java.io.IOException;
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
import shop.entities.Categories;
import shop.services.CategoryService;


@Controller
public class AdminCategoryController extends BaseController {
	@Autowired
	private CategoryService categoryService;

	/**
	 * action when click page manage_category
	 * 
	 * @param modelMap
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/admin/manage_category", method = RequestMethod.GET)
	public String deletepage(final ModelMap modelMap, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		List<Categories> categories = categoryService.findAll();
		modelMap.addAttribute("category", categories);
		modelMap.addAttribute("categories", categoryService.findAll());
		return "admin/manage-category";
	}

	/**
	 * action when user click buton addcategory
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = { "/admin/add_category" }, method = RequestMethod.GET)
	public String addcategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {

		model.addAttribute("category", new Categories());
		model.addAttribute("categories", categoryService.findAll());
		return "admin/add-category";
	}

	/**
	 * on page add_category action user want to add new category or edit iformation
	 * of cateogory
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @param category
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = { "/admin/add_category" }, method = RequestMethod.POST)
	public String detail(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,
			@ModelAttribute("category") Categories category) throws Exception {
//		if (category.getId() != null && category.getId() > 0) {
//			categoryService.edit(category);
//		} else {
//			categoryService.save(category);
//		}
		categoryService.saveOrUpdate(category);
		return "redirect:/admin/add_category";
	}

	/**
	 * method when user click icon edit on page manage_category, display information
	 * of category
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = { "/admin/edit_category" }, method = RequestMethod.GET)
	public String editcategory(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		int categoryId = Integer.parseInt(request.getParameter("id"));
		Categories category = categoryService.getById(categoryId);

		model.addAttribute("category", category);
		model.addAttribute("categories", categoryService.findAll());

		return "admin/add-category";
	}

}
