package shop.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import shop.controller.user.BaseController;
import shop.entities.User;


@Controller
public class AdminSecureController extends BaseController {

	@RequestMapping(value= {"/success"})
    public void loginPageRedirect(HttpServletRequest request, HttpServletResponse response, Authentication authResult)
            throws IOException, ServletException{
        User u = (User) authResult.getPrincipal();
        String role = u.getRoles().get(0).getName();

        if (role.contains("ADMIN")) {
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/admin"));
        } else {
            response.sendRedirect(response.encodeRedirectURL(request.getContextPath() + "/index"));
        }
    }

}
