package ecommunicate.ibeacon.persistence.facade;

import java.util.ArrayList;

import ecommunicate.ibeacon.persistence.entities.Offers;

public interface OffersDaoInterface {
	public void addContacts(ArrayList<Offers> arrContact);
	public void mergeContact(Offers contact);
	public void mergeContact(ArrayList<Offers> arrContact);
	public ArrayList<Offers> getAllUser();
	public void deleteContact(Offers contacts);
}
