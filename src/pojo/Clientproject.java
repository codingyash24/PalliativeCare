package pojo;

// Generated 1 Apr, 2016 3:29:44 PM by Hibernate Tools 3.4.0.CR1

/**
 * Clientproject generated by hbm2java
 */
public class Clientproject implements java.io.Serializable {

	private Integer proid;
	private String protitle;
	private String description;
	private String language;

	public Clientproject() {
	}

	public Clientproject(String protitle, String description, String language) {
		this.protitle = protitle;
		this.description = description;
		this.language = language;
	}

	public Integer getProid() {
		return this.proid;
	}

	public void setProid(Integer proid) {
		this.proid = proid;
	}

	public String getProtitle() {
		return this.protitle;
	}

	public void setProtitle(String protitle) {
		this.protitle = protitle;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLanguage() {
		return this.language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

}
