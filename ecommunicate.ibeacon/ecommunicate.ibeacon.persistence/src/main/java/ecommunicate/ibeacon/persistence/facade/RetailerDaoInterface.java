package ecommunicate.ibeacon.persistence.facade;

import java.util.ArrayList;

import javax.ejb.Remote;

import ecommunicate.ibeacon.persistence.entities.Retailer;

@Remote
public interface RetailerDaoInterface {
	public void addUser(Retailer user);
	public Retailer getUserByUsernameAndPassword(String username,
			String password);
	public Retailer getUserByUsername(String username);
	
	
}
