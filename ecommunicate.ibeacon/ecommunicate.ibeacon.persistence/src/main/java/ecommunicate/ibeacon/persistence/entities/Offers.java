package ecommunicate.ibeacon.persistence.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Offers")
public class Offers extends ibecconBase {
	@Column(name="offerdetails")
	private String OfferDetails;
	/*@ManyToOne
	@JoinColumn(name = "retailer")
	private Retailer retailer;
*/	public String getOfferDetails() {
		return OfferDetails;
	}
	public void setOfferDetails(String offerDetails) {
		OfferDetails = offerDetails;
	}
	/*public Retailer getRetailer() {
		return retailer;
	}
	public void setRetailer(Retailer retailer) {
		this.retailer = retailer;
	}
	*/
	

}
