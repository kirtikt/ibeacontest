package ecommunicate.ibeacon.dao.sessionbeans;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import ecommunicate.ibeacon.dao.configs.IbeaconBaseDAO;
import ecommunicate.ibeacon.persistence.facade.RetailerDaoInterface;

/**
 * Session Bean implementation class RetailerDao
 */
@Stateless
@LocalBean
public class RetailerDao extends IbeaconBaseDAO implements RetailerDaoInterface {

    /**
     * Default constructor. 
     */
    public RetailerDao() {
        // TODO Auto-generated constructor stub
    }

}
