package ecommunicate.ibeacon.dao.test;

import javax.ejb.embeddable.EJBContainer;
import javax.naming.Context;
import javax.naming.NamingException;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import ecommunicate.ibeacon.persistence.entities.Retailer;
import ecommunicate.ibeacon.persistence.facade.RetailerDaoInterface;

public class dbtester {
	
	private static EJBContainer ejbContainer;

	private static Context ctx;
 @Test
  public void f() throws NamingException {
	 Object object1 = ctx
				.lookup("java:global/ecommunicate.ibeacon.dao/RetailerDao!ecommunicate.ibeacon.persistence.facade.RetailerDaoInterface");
	 RetailerDaoInterface dao=(RetailerDaoInterface) object1;
	Retailer r= dao.getUserByUsernameAndPassword("demo", "1234");
	System.out.println(r.getRetailername());
  }
  
  @BeforeClass
	public static void intialize() {
		// creating ejb container
		ejbContainer = EJBContainer.createEJBContainer();
		ctx = ejbContainer.getContext();

	}
}
