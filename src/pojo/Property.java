package pojo;



import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Registration generated by hbm2java
 */
public class Property implements java.io.Serializable {

	private Integer ID;
	private String pname;
	private String dealer;
	private String country;
	private String state;
	private String city;
	private Integer price;
	private String contactno;
	public Property() {
	}

	public Property(  String pname, 
			 String dealer, String country, String state, String city, Integer price, String contactno) {
		
		this.pname = pname;
		this.dealer = dealer;
		this.country = country;
		this.state = state;
		this.city = city;
		this.price = price;
		this.contactno = contactno;
	}
	public Integer getID() {
		return this.ID;
	}

	public void setID(Integer ID) {
		this.ID = ID;
	}


	public String getPname() {
		return this.pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDealer() {
		return this.dealer;
	}

	public void setDealer(String dealer) {
		this.dealer = dealer;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getContactno() {
		return this.contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	
	
	

	

	
	
}
