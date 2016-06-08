package ecommunicate.ibeacon.dao.configs;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class IbeaconBaseDAO {
	
	
//	private static Logger LOG = Logger.getLogger(PL4BaseDAO.class);

	private static EntityManagerFactory emf = Persistence
			.createEntityManagerFactory("ibeacon-persistence");

	public static EntityManagerFactory getEmf() {
		return emf;
	}
	
	public static EntityManager getEm() {

//		LOG.debug(emf);
		
		EntityManager em = getEmf().createEntityManager();
//		LOG.debug("Initialising EntityManager ... ");
		return em;
	}


}
