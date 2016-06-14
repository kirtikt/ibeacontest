package ecommunicate.ibeacon.web.controller;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

import ecommunicate.ibeacon.common.constants.IbeaconConstants;
import ecommunicate.ibeacon.persistence.entities.Retailer;
import ecommunicate.ibeacon.web.fcade.LoginInterface;

public class CustomUrlAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

	@Autowired
	LoginInterface logincontrollerserviceint;

	// public final static Logger
	// logger=Logger.getLogger(CustomUrlAuthenticationSuccessHandler.class);

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {

		/*
		 * logger.info(
		 * "***************** onAuthenticationSuccess ********************");
		 * logger.info("context path"+request.getContextPath());
		 */ Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());

		Retailer user = logincontrollerserviceint.loadUserByUsername(authentication.getName());

		request.getSession().setAttribute("user", user);

		String url = "";

		if (user.getUserrole().equalsIgnoreCase(IbeaconConstants.ADMIN)) {
			url = "/admin/home";
			getRedirectStrategy().sendRedirect(request, response, url);

		}
		if (user.getUserrole().equalsIgnoreCase(IbeaconConstants.USER)) {
			url = "/client/clientSuccess";
			getRedirectStrategy().sendRedirect(request, response, url);

		}

	}
}
