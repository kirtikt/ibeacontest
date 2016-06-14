package ecommunicate.ibeacon.persistence.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="Retailer")
public class Retailer extends ibecconBase{
	
	@Column(name="retailerName")
	private String retailername;
	@Column(name="username")
	private String username;
	@Column(name="password")
	private String password;
	@Column(name="userrole")
	private String userrole;
	@Column(name="description")
	private String desc;
	@ManyToOne
	@JoinColumn(name = "retailer")
	private IbecconDevice ibeacondev;
	
	public String getUserrole() {
		return userrole;
	}
	public void setUserrole(String userrole) {
		this.userrole = userrole;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRetailername() {
		return retailername;
	}
	public void setRetailername(String retailername) {
		this.retailername = retailername;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public IbecconDevice getIbeacondev() {
		return ibeacondev;
	}
	public void setIbeacondev(IbecconDevice ibeacondev) {
		this.ibeacondev = ibeacondev;
	}
	
	
	

}
