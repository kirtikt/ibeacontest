package ecommunicate.ibeacon.web.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.SessionAttributes;

import ecommunicate.ibeacon.persistence.entities.Retailer;
import ecommunicate.ibeacon.web.fcade.LoginInterface;



public class CustomAuthenticationProvider implements AuthenticationProvider{

	
	@Autowired
	LoginInterface logincontrollerserviceint;
	@Autowired
	CustomUserDetailsService userDetailsService;

	  public boolean supports(Class<?> arg0) {
	        return true;
	    }
	  
	    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
	        String username = authentication.getName();
	        String password = (String) authentication.getCredentials();
	    
	        User user = null;
	        Retailer currentUser=null;
	    
	        			currentUser = logincontrollerserviceint.loginCheck(username, password);
	        		      		
	        
	        	
	        if(currentUser!=null){
	      
	        
	        	
	        		
	           user = (User) userDetailsService.loadUserByUsername(currentUser.getUsername());

	      
		        
		
	        
	        Collection<? extends GrantedAuthority> authorities = user.getAuthorities();
	        
	        return new UsernamePasswordAuthenticationToken(user, password, authorities);
	        	}
	        else
	        	return null;
	      
	        	
	        	
	        
	      
	    
	        
	      
	      
	    }
	    
	    
	    
 
	 
	   
}
