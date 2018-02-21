package pojo;

// Generated 1 Apr, 2016 3:29:44 PM by Hibernate Tools 3.4.0.CR1

import java.util.Date;

/**
 * Urlmaster generated by hbm2java
 */
public class Urlmaster implements java.io.Serializable {

	private Integer urlid;
	private Integer urlDvpId;
	private Integer urlStudId;
	private Integer urlStatus;
	private Date requestTime;
	private String url;
	private Date acceptTime;

	public Urlmaster() {
	}

	public Urlmaster(Date requestTime, Date acceptTime) {
		this.requestTime = requestTime;
		this.acceptTime = acceptTime;
	}

	public Urlmaster(Integer urlDvpId, Integer urlStudId, Integer urlStatus,
			Date requestTime, String url, Date acceptTime) {
		this.urlDvpId = urlDvpId;
		this.urlStudId = urlStudId;
		this.urlStatus = urlStatus;
		this.requestTime = requestTime;
		this.url = url;
		this.acceptTime = acceptTime;
	}

	public Integer getUrlid() {
		return this.urlid;
	}

	public void setUrlid(Integer urlid) {
		this.urlid = urlid;
	}

	public Integer getUrlDvpId() {
		return this.urlDvpId;
	}

	public void setUrlDvpId(Integer urlDvpId) {
		this.urlDvpId = urlDvpId;
	}

	public Integer getUrlStudId() {
		return this.urlStudId;
	}

	public void setUrlStudId(Integer urlStudId) {
		this.urlStudId = urlStudId;
	}

	public Integer getUrlStatus() {
		return this.urlStatus;
	}

	public void setUrlStatus(Integer urlStatus) {
		this.urlStatus = urlStatus;
	}

	public Date getRequestTime() {
		return this.requestTime;
	}

	public void setRequestTime(Date requestTime) {
		this.requestTime = requestTime;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getAcceptTime() {
		return this.acceptTime;
	}

	public void setAcceptTime(Date acceptTime) {
		this.acceptTime = acceptTime;
	}

}