package ecommunicate.ibeacon.web.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ecommunicate.ibeacon.persistence.entities.Retailer;
import ecommunicate.ibeacon.web.fcade.LoginInterface;



@Controller
@RequestMapping(value = "/admin")
public class AdminController {

	@Autowired
	LoginInterface logincontrollerserviceint;
	
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView viewDashboard(HttpSession session, Principal principal) {
		ModelAndView model = null;
		if (principal != null) {
			Retailer currentUser = logincontrollerserviceint
					.loadUserByUsername(principal.getName());

		
			model = new ModelAndView("home");
			session.setAttribute("systemUser", currentUser);
	
}
		return model;
	
}

	
}
