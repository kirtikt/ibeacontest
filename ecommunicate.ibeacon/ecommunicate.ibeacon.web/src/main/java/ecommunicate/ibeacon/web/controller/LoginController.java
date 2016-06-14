package ecommunicate.ibeacon.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {


	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView getdata() {

		System.out.println("in controller");
		ModelAndView model = new ModelAndView("login");
	
		return model;

	}
	

	
		@RequestMapping(value = "/loginError", method = RequestMethod.POST)
	public ModelAndView loginError(HttpServletRequest request) {
			ModelAndView model =null;
		
			
				String message  = (String) request.getAttribute("message");
//				LOG.debug(message);
				 model = new ModelAndView("loginError");
				 model.addObject("message", message);
			
		return model;

	}
		
		

		@RequestMapping(value = "/loggingout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {
			ModelAndView model =null;
		
			
				String message  = (String) request.getAttribute("message");
//				LOG.debug(message);
				 model = new ModelAndView("logout");
				 model.addObject("message", message);
			
		return model;

	}
	
	
}