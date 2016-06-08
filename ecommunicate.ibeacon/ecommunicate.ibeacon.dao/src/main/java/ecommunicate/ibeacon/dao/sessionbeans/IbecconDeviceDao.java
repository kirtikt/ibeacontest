package ecommunicate.ibeacon.dao.sessionbeans;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;

import ecommunicate.ibeacon.dao.configs.IbeaconBaseDAO;
import ecommunicate.ibeacon.persistence.facade.IbecconDeviceInterface;

@Stateless
public class IbecconDeviceDao extends IbeaconBaseDAO implements IbecconDeviceInterface{
	
	EntityManager em = null;
    /**
     * Default constructor. 
     */
   
   

}
