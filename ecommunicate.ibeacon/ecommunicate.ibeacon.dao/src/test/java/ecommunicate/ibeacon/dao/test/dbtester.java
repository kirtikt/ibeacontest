package ecommunicate.ibeacon.dao.test;

import javax.ejb.embeddable.EJBContainer;
import javax.naming.Context;

import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class dbtester {
	
	private static EJBContainer ejbContainer;

	private static Context ctx;
//  @Test
  public void f() {
  }
  
  @BeforeClass
	public static void intialize() {
		// creating ejb container
		ejbContainer = EJBContainer.createEJBContainer();
		ctx = ejbContainer.getContext();

	}
}
