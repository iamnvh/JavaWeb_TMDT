package shop.controller.admin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.controller.user.BaseController;
import shop.dto.Cart;
import shop.dto.CartItem;
import shop.entities.SaleOrder;
import shop.services.ProductService;
import shop.services.SaleOrderProductService;
import shop.services.SaleOrderService;


@Controller
public class AdminCartController extends BaseController {
	@Autowired
	private SaleOrderService saleOrderService;
	
	@Autowired
	private SaleOrderProductService saleOrderProductService;
	
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping(value = "/admin/manage_cart", method = RequestMethod.GET)
	public String manageCart(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		List<SaleOrder> saleOrderes= saleOrderService.findAll();
		
		model.addAttribute("saleorders", saleOrderes);
		return "admin/manage-cart";
	}
	
	@RequestMapping(value = { "/admin/detail_product" }, method = RequestMethod.GET)
	public String detailProduct(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {

		int saleOrderId = Integer.parseInt(request.getParameter("id"));
		SaleOrder saleOrder = saleOrderService.getById(saleOrderId);
		
	
		model.addAttribute("cart", saleOrder.getProducts() );
		model.addAttribute("totalprice", saleOrder.getTotal_price() );
		model.addAttribute("saleOrder", saleOrder);

		return "admin/detail-cart";
	}
	private Double getTotalPrice(HttpServletRequest request) {
        HttpSession httpSession = request.getSession();

        if (httpSession.getAttribute("cart") == null) {
            return 0d;
        }

        Cart cart = (Cart) httpSession.getAttribute("cart");
        List<CartItem> cartItems = cart.getCartItems();

        Double totalPrice = 0d;
        for (CartItem item : cartItems) {
            totalPrice += item.getPriceUnit().doubleValue() * item.getQuanlity();
        }
        
        return totalPrice;
    }
}
