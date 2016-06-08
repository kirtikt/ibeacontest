package ecommunicate.ibeacon.persistence.utility;

import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import ecommunicate.ibeacon.persistence.facade.IbecconDeviceInterface;
import ecommunicate.ibeacon.persistence.facade.OffersDaoInterface;
import ecommunicate.ibeacon.persistence.facade.RetailerDaoInterface;

public class JndiLookup {
	private static String EJB_IBEACONDEVICE="java:global/ecommunicate.ibeacon.dao-0.0.1-SNAPSHOT-jar-with-dependencies/ibecconDeviceDao!ecommunicate.ibeacon.persistence.interfaces.IbecconDeviceInterface";
	private static String EJB_RETAILER="java:global/ecommunicate.ibeacon.dao-0.0.1-SNAPSHOT-jar-with-dependencies/ibecconDeviceDao!ecommunicate.ibeacon.persistence.interfaces.IbecconDeviceInterface";
	private static String EJB_OFFER="java:global/ecommunicate.ibeacon.dao-0.0.1-SNAPSHOT-jar-with-dependencies/ibecconDeviceDao!ecommunicate.ibeacon.persistence.interfaces.IbecconDeviceInterface";

	public String getEJB_ibecconDevices() {
		return EJB_IBEACONDEVICE;
	}

	public void setEJB_ibecconDevices(String eJB_IBEACONDEVICE) {
		EJB_IBEACONDEVICE = eJB_IBEACONDEVICE;
	}

	public String getEJB_IBEACONDEVICE() {
		return EJB_IBEACONDEVICE;
	}

	public void setEJB_IBEACONDEVICE(String eJB_IBEACONDEVICE) {
		EJB_IBEACONDEVICE = eJB_IBEACONDEVICE;
	}

	public String getEJB_RETAILER() {
		return EJB_RETAILER;
	}

	public void setEJB_RETAILER(String eJB_RETAILER) {
		EJB_RETAILER = eJB_RETAILER;
	}

	public String getEJB_OFFER() {
		return EJB_OFFER;
	}

	public void setEJB_OFFER(String eJB_OFFER) {
		EJB_OFFER = eJB_OFFER;
	}
	
	public static Context getContext() {
		Context ctx = null;
		try {
			Properties props = new Properties();
			props.setProperty("java.naming.factory.url.pkgs",
					"org.jboss.ejb.client.naming");

			ctx = new InitialContext(props);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
//LOG.error(e);
		}
		return ctx;
	}
	
	public static IbecconDeviceInterface getIbconDeviceInt() {

		IbecconDeviceInterface ibecconDeviceInterface = null;
		try {
			ibecconDeviceInterface = (IbecconDeviceInterface) getContext().lookup(
					EJB_IBEACONDEVICE);
		} catch (NamingException e) {
//			LOG.error(e);
		}
		return ibecconDeviceInterface;

	}	
	public static RetailerDaoInterface getretailerDaoInterface() {

		RetailerDaoInterface retailerDaoInterface = null;
		try {
			retailerDaoInterface = (RetailerDaoInterface) getContext().lookup(
					EJB_RETAILER);
		} catch (NamingException e) {
//			LOG.error(e);
		}
		return retailerDaoInterface;

	}	
	public static OffersDaoInterface getoffersDaoInterface() {

		OffersDaoInterface offersDaoInterface = null;
		try {
			offersDaoInterface = (OffersDaoInterface) getContext().lookup(
					EJB_OFFER);
		} catch (NamingException e) {
//			LOG.error(e);
		}
		return offersDaoInterface;

	}	
}
