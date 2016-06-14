package ecommunicate.ibeacon.web.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import ecommunicate.ibeacon.persistence.entities.Retailer;
import ecommunicate.ibeacon.web.fcade.LoginInterface;

public class customUrlAuthenticationFailureHandler implements AuthenticationFailureHandler{
 
	@Autowired
	LoginInterface logincontrollerserviceint;

	public void onAuthenticationFailure(HttpServletRequest request,
			HttpServletResponse response,
			AuthenticationException exception)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
        @SuppressWarnings("deprecation")
		UsernamePasswordAuthenticationToken user =(UsernamePasswordAuthenticationToken)exception.getAuthentication();
String message="";
				
				 Retailer currentUser = logincontrollerserviceint.loadUserByUsername(user.getName());
				 if(currentUser!=null){
					 
				 }else{
					 message = "Authentication Failed!..";
				 }
				 
				 RequestDispatcher dispatcher = request.getRequestDispatcher("/loginError");
				 request.setAttribute("message", message);
dispatcher.forward(request, response);
				
		
		
	}
	
	
	
	
	
}