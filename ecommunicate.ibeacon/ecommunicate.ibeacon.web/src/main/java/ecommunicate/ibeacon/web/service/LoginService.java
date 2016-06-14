package ecommunicate.ibeacon.web.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import ecommunicate.ibeacon.persistence.entities.Retailer;
import ecommunicate.ibeacon.persistence.facade.RetailerDaoInterface;
import ecommunicate.ibeacon.persistence.utility.JndiLookup;
import ecommunicate.ibeacon.web.fcade.LoginInterface;

@Service
@Component
public class LoginService implements LoginInterface {
	public Retailer loginCheck(String username,String password){
		
		RetailerDaoInterface systemUserDaoIntface = JndiLookup.getretailerDaoInterface();
		if(systemUserDaoIntface==null)
		{
			System.out.println("null entry");
		}
		Retailer systemUser = systemUserDaoIntface.getUserByUsernameAndPassword(username, password);
		return systemUser;
		
		
	}

	public Retailer loadUserByUsername(String username) {

		RetailerDaoInterface systemUserDaoIntface = JndiLookup.getretailerDaoInterface();
		Retailer systemUser = systemUserDaoIntface.getUserByUsername(username);
		return systemUser;	
		}
	
}
