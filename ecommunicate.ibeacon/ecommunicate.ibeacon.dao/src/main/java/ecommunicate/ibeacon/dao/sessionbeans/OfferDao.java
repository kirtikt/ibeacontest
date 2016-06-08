package ecommunicate.ibeacon.dao.sessionbeans;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import ecommunicate.ibeacon.dao.configs.IbeaconBaseDAO;
import ecommunicate.ibeacon.persistence.facade.IbecconDeviceInterface;

/**
 * Session Bean implementation class OfferDao
 */
@Stateless
@LocalBean
public class OfferDao extends IbeaconBaseDAO implements IbecconDeviceInterface{

    /**
     * Default constructor. 
     */
    public OfferDao() {
        // TODO Auto-generated constructor stub
    }

}
