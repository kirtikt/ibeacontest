package ecommunicate.ibeacon.persistence.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ibeccondevice")
public class IbecconDevice extends ibecconBase {
	
	@Column(name="Name")
	private String  name;
	@Column(name="uuid")
	private String  uuid;
	@Column(name="majorfeel")
	private String majorfeel;
	@Column(name="minorfeel")
	private String minorfeel;
	
	@OneToMany(mappedBy="systemUser",cascade=CascadeType.ALL)
	 private List<Retailer> retailer;
	
	public List<Retailer> getRetailer() {
		return retailer;
	}
	public void setRetailer(List<Retailer> retailer) {
		this.retailer = retailer;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getMajorfeel() {
		return majorfeel;
	}
	public void setMajorfeel(String majorfeel) {
		this.majorfeel = majorfeel;
	}
	public String getMinorfeel() {
		return minorfeel;
	}
	public void setMinorfeel(String minorfeel) {
		this.minorfeel = minorfeel;
	}
	
}
