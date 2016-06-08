package ecommunicate.ibeacon.persistence.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
@MappedSuperclass
public class ibecconBase implements Serializable{
	  	@Id
	    @GeneratedValue(strategy= GenerationType.AUTO)
	    @Column(name="id")
	    private int id;


	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }
}
