package cn.znke.etp.domain;

/**
 * Ke entity. @author MyEclipse Persistence Tools
 */

public class Ke implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer kid;
	private String kname;
	private Integer kage;
	private String ksex;
	private String kjob;
	private String kphone;
	private String kzhiwei;
	private String kjibie;

	// Constructors

	/** default constructor */
	public Ke() {
	}

	/** full constructor */
	public Ke(String kname, Integer kage, String ksex, String kjob,
			String kphone, String kzhiwei, String kjibie) {
		this.kname = kname;
		this.kage = kage;
		this.ksex = ksex;
		this.kjob = kjob;
		this.kphone = kphone;
		this.kzhiwei = kzhiwei;
		this.kjibie = kjibie;
	}

	// Property accessors

	public Integer getKid() {
		return this.kid;
	}

	public void setKid(Integer kid) {
		this.kid = kid;
	}

	public String getKname() {
		return this.kname;
	}

	public void setKname(String kname) {
		this.kname = kname;
	}

	public Integer getKage() {
		return this.kage;
	}

	public void setKage(Integer kage) {
		this.kage = kage;
	}

	public String getKsex() {
		return this.ksex;
	}

	public void setKsex(String ksex) {
		this.ksex = ksex;
	}

	public String getKjob() {
		return this.kjob;
	}

	public void setKjob(String kjob) {
		this.kjob = kjob;
	}

	public String getKphone() {
		return this.kphone;
	}

	public void setKphone(String kphone) {
		this.kphone = kphone;
	}

	public String getKzhiwei() {
		return this.kzhiwei;
	}

	public void setKzhiwei(String kzhiwei) {
		this.kzhiwei = kzhiwei;
	}

	public String getKjibie() {
		return this.kjibie;
	}

	public void setKjibie(String kjibie) {
		this.kjibie = kjibie;
	}

}