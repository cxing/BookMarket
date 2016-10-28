package com.web.entity;

import java.io.Serializable;

public class User implements Serializable {

	private static final long serialVersionUID = -3766780183428993793L;

	// user id
	private String id;

	// user name
	private String uname;

	// user password;
	private String upwd;

	// user level
	private int ulevel;

	// user latest log time;
	private String logTime;

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the uname
	 */
	public String getUname() {
		return uname;
	}

	/**
	 * @param uname
	 *            the uname to set
	 */
	public void setUname(String uname) {
		this.uname = uname;
	}

	/**
	 * @return the upwd
	 */
	public String getUpwd() {
		return upwd;
	}

	/**
	 * @param upwd
	 *            the upwd to set
	 */
	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	/**
	 * @return the ulevel
	 */
	public int getUlevel() {
		return ulevel;
	}

	/**
	 * @param ulevel
	 *            the ulevel to set
	 */
	public void setUlevel(int ulevel) {
		this.ulevel = ulevel;
	}

	/**
	 * @return the logTime
	 */
	public String getLogTime() {
		return logTime;
	}

	/**
	 * @param logTime
	 *            the logTime to set
	 */
	public void setLogTime(String logTime) {
		this.logTime = logTime;
	}

	public User(String id, String uname, String upwd, int ulevel, String logTime) {
		super();
		this.id = id;
		this.uname = uname;
		this.upwd = upwd;
		this.ulevel = ulevel;
		this.logTime = logTime;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", upwd=" + upwd + ", ulevel=" + ulevel + ", logTime=" + logTime + "]";
	}
}
