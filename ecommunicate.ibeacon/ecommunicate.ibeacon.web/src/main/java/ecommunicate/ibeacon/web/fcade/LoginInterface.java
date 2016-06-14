package ecommunicate.ibeacon.web.fcade;

import ecommunicate.ibeacon.persistence.entities.Retailer;

public interface LoginInterface {
	public Retailer loginCheck(String username,String password);
	public Retailer loadUserByUsername(String username);

}
