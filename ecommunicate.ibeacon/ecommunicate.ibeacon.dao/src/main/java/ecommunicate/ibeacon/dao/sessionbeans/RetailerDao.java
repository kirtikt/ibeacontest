package ecommunicate.ibeacon.dao.sessionbeans;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import ecommunicate.ibeacon.dao.configs.IbeaconBaseDAO;
import ecommunicate.ibeacon.persistence.entities.Retailer;
import ecommunicate.ibeacon.persistence.facade.RetailerDaoInterface;

/**
 * Session Bean implementation class RetailerDao
 */
@Stateless
@LocalBean
public class RetailerDao extends IbeaconBaseDAO implements RetailerDaoInterface {
	EntityManager em = null;
    /**
     * Default constructor. 
     */
    public RetailerDao() {
        // TODO Auto-generated constructor stub
    }
    public void addUser(Retailer user) {
		em = getEm();

		try {
			em.getTransaction().begin();
			em.persist(user);
			em.getTransaction().commit();
		} catch (Exception exception) {
			if (em.getTransaction().isActive())
				em.getTransaction().rollback();
//			LOG.error(exception.getMessage());

		} finally {

			em.close();
		}

	}
	public Retailer getUserByUsernameAndPassword(String username,
			String password) {
		em = getEm();

		Retailer user = null;
		try {

			String qlString = "SELECT user FROM Retailer user "
					+ "WHERE user.username = :username "
					+ "and user.password = :password ";

			TypedQuery<Retailer> query = em.createQuery(qlString,
					Retailer.class);
			query.setParameter("username", username);
			query.setParameter("password", password);

			if(query.getResultList().size()>0)
			user = query.getResultList().get(0);
			// if(query.getResultList()!=null && query.getResultList().size()>0)

		} catch (Exception exception) {
			exception.printStackTrace();
//			LOG.error(exception.getMessage());

		} finally {

			em.close();
		}

		return user;

	}
	

	public Retailer getUserByUsername(String username) {
		em = getEm();

		Retailer user = null;
		try {

			String qlString = "SELECT user FROM Retailer user  "
					+ "WHERE user.username = :username ";

			TypedQuery<Retailer> query = em.createQuery(qlString,
					Retailer.class);
			query.setParameter("username", username);

			if(query.getResultList().size()>0)
			user = query.getResultList().get(0);
			// if(query.getResultList()!=null && query.getResultList().size()>0)

		} catch (Exception exception) {
			exception.printStackTrace();
//			LOG.error(exception.getMessage());

		} finally {

			em.close();
		}

		return user;

	}
}
