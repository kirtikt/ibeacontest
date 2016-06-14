package ecommunicate.ibeacon.web.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ecommunicate.ibeacon.common.constants.IbeaconConstants;
import ecommunicate.ibeacon.persistence.entities.Retailer;
import ecommunicate.ibeacon.web.fcade.LoginInterface;




@Service
@Transactional(readOnly = true)
public class CustomUserDetailsService implements UserDetailsService {

	
	
	@Autowired
	LoginInterface logincontrollerserviceint;

	public User loadUserByUsername(String username)
            throws UsernameNotFoundException, DataAccessException {
		
		
		// Declare a null Spring User
		User user = null;		
		
		try {
			
			
			
		
			Retailer currentUser = logincontrollerserviceint.loadUserByUsername(username);
			
			
				
				user =  new User(
						currentUser.getUsername(), 
						currentUser.getPassword(),
						true,
						true,
						true,
						true,
						getAuthorities(currentUser.getUserrole()));
				
			
			
		} catch (Exception e) {
//			logger.error(e);
			
//			logger.debug("Error in retrieving user");
			throw new UsernameNotFoundException("Error in retrieving user");
		}		
		return user;
	}

	public Collection<GrantedAuthority> getAuthorities(String role) {
		// Create a list of grants for this user
		List<GrantedAuthority> authList = new ArrayList<GrantedAuthority>(2);
		if ( role.equals(IbeaconConstants.ADMIN)) {
			// User has user level access
//			logger.debug("Grant Admin to this user");
			authList.add(new GrantedAuthorityImpl(IbeaconConstants.ADMIN));
		}
		if ( role.equals(IbeaconConstants.USER)) {
			// User has user level access
//			logger.debug("Grant USER to this L1user");
			authList.add(new GrantedAuthorityImpl(IbeaconConstants.USER));
		}
		
		
		// Return list of granted authorities
		
		return authList;
  }
}

