package com.javacoffee.web.model;

import java.util.Date;

public class OrderVO {
	
	private int orderNo;
	private String  prdNo;
	private String memId;
	private String memName;
	private String memTel;
	private String memEmail;
	private String memAddress;
	private String prdName;
	private String ordStatus;
	private String subsStart;
	private String subsEnd;
	private Date createDate;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getPrdNo() {
		return prdNo;
	}
	public void setPrdNo(String prdNo) {
		this.prdNo = prdNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	public String getPrdName() {
		return prdName;
	}
	public void setPadName(String prdName) {
		this.prdName = prdName;
	}
	public String getOrdStatus() {
		return ordStatus;
	}
	public void setOrdStatus(String ordStatus) {
		this.ordStatus = ordStatus;
	}
	public String getSubsStart() {
		return subsStart;
	}
	public void setSubsStart(String subsStart) {
		this.subsStart = subsStart;
	}
	public String getSubsEnd() {
		return subsEnd;
	}
	public void setSubsEnd(String subsEnd) {
		this.subsEnd = subsEnd;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
	
	
	

}
