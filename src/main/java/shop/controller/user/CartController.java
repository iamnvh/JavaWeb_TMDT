package shop.controller.user;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.dto.Cart;
import shop.dto.CartItem;
import shop.entities.Product;
import shop.entities.SaleOrder;
import shop.entities.SaleOrderProduct;
import shop.services.CategoryService;
import shop.services.ProductService;
import shop.services.SaleOrderService;

@Controller
public class CartController extends BaseController{
	@Autowired
	private CategoryService categoryService;
	//Cart
	@RequestMapping(value = {"/cart"}, method = RequestMethod.GET)
	public String cart(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("category", categoryService.findAll());
		model.addAttribute("totalPrice", getTotalPrice(request));
		return "user/cart/cart-page";
	}
	
	//CheckOut
	@RequestMapping(value = {"/checkout"}, method = RequestMethod.GET)
	public String checkout(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("totalPrice", getTotalPrice(request));
		model.addAttribute("category", categoryService.findAll());
		return "user/cart/checkout";
	}
	
	@Autowired
	ProductService productService;
	@Autowired
	SaleOrderService saleOrderService;
	
	@RequestMapping(value = { "/checkout" }, method = RequestMethod.POST)
	public String addProduct_Post(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		HttpSession httpSession = request.getSession();
		String email = request.getParameter("email");
		if(email == null) {
			email = getUserLogined().getEmail();
		}
		String tel = request.getParameter("tel");
		String fullName = request.getParameter("fullName");
		String address = request.getParameter("address");

		
		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		SaleOrder saleOrder = new SaleOrder();
		saleOrder.setCode("ORDER-" + System.currentTimeMillis());
		saleOrder.setSeo("ORDER-" + System.currentTimeMillis());
		saleOrder.setCustomerName(fullName);
		saleOrder.setCustomerAddress(address);
		saleOrder.setCustomerEmail(email);
		saleOrder.setCustomerPhone(tel);
		saleOrder.setTotal(new BigDecimal(0));
		for (CartItem item : cartItems) {
			SaleOrderProduct saleOrderProducts = new SaleOrderProduct();
			saleOrderProducts.setProduct(productService.getById(item.getProductId()));
			saleOrderProducts.setQuality(item.getQuanlity());
			saleOrder.addSaleOrderProduct(saleOrderProducts);
		}
		saleOrder.setTotal_price(new BigDecimal(getTotalPrice(request)));
		saleOrderService.save(saleOrder);
		this.resetCart(request);

		// send a email to customer.
		//emailService.sendEmailWhenPaymentSuccess(email);
		
		return "redirect:/index";
	}
	
	@RequestMapping(value = { "/cart/add" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> addToCart(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @RequestBody CartItem cartItem) {
		// lay doi tuong session
		// session tuong tu nhu la 1 map luu tren ram cua server
		HttpSession httpSession = request.getSession();
		
		// dinh nghia gio hang
		Cart cart = null;
		
		// kiem tra xem da co gio hang tren session
		if (httpSession.getAttribute("cart") != null) {
			// neu da ton tai gio hang thi lay ra tu session
			cart = (Cart) httpSession.getAttribute("cart");
		} else {
			cart = new Cart(); // khoi tao gio hang neu chua co
			httpSession.setAttribute("cart", cart); // luu gio hang tren session
		}

		// kiem tra item da co trong gio hang chua
		// lay tat ca cac san pham co trong gio hang
		List<CartItem> cartItems = cart.getCartItems();
		
		// bat dau kiem tra xem da ton tai chua
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				item.setQuanlity(item.getQuanlity() + cartItem.getQuanlity());
			}
		}

		// neu khong ton tai san pham trong gio hang
		if (!isExists) {
			// lay thon tin san pham tu db
			Product productInDb = productService.getById(cartItem.getProductId());
			
			// thiet lap cac gia tri khac cua item
			cartItem.setAvatarProduct(productInDb.getAvatar());
			cartItem.setProductName(productInDb.getTitle());
			cartItem.setPriceUnit(productInDb.getPrice());
			
			// add san pham vao trong gio hang
			cart.getCartItems().add(cartItem);
		}

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		
		printInfo(request);
		
		httpSession.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
	private void printInfo(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		for (CartItem item : cartItems) {
			System.out.println(item.getProductName() + ":" + item.getQuanlity());
		}
	}
	
	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}
	private void resetCart(final HttpServletRequest request) {
        HttpSession httpSession = request.getSession();
        httpSession.setAttribute("cart", new Cart());
        httpSession.setAttribute("totalItems", 0);
    }
	@RequestMapping(value = { "/cart_delete" }, method = RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> deleteItemInCart(final ModelMap model, final HttpServletRequest request,
            final HttpServletResponse response, @RequestBody CartItem cartItem) {
        HttpSession httpSession = request.getSession();

        Cart cart = (Cart) httpSession.getAttribute("cart");

        List<CartItem> cartItems = cart.getCartItems();
        Double totalPrice = 0d;

        for (int i = 0; i < cartItems.size(); i++) {
            if(cartItems.get(i).getProductId() == cartItem.getProductId()) {
                cartItems.remove(i);
                break;
            }
        }
        for (CartItem item : cartItems) {
            totalPrice += item.getPriceUnit().doubleValue();
        }

        httpSession.setAttribute("totalItems", getTotalItems(request));
        httpSession.setAttribute("totalPrice", totalPrice);
        Map<String, Object> jsonResult = new HashMap<String, Object>();
        jsonResult.put("code", 200);
        jsonResult.put("status", "TC");
        jsonResult.put("totalItems", getTotalItems(request));
        return ResponseEntity.ok(jsonResult);
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
