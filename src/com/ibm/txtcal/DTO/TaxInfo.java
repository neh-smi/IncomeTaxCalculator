package com.ibm.txtcal.DTO;

public class TaxInfo {
	
	private int netTaxableIncome;
	private int incomeTax;
	private int surcharge;
	private int eduCess;
	
	private int higheduCess;
	private int netIncomeTax;
	
	
	public int getNetTaxableIncome() {
		return netTaxableIncome;
	}
	public void setNetTaxableIncome(int netTaxableIncome) {
		this.netTaxableIncome = netTaxableIncome;
	}
	public int getIncomeTax() {
		return incomeTax;
	}
	public void setIncomeTax(int incomeTax) {
		this.incomeTax = incomeTax;
	}
	public int getSurcharge() {
		return surcharge;
	}
	public void setSurcharge(int surcharge) {
		this.surcharge = surcharge;
	}
	
	public int getEduCess() {
		return eduCess;
	}
	public void setEduCess(int eduCess) {
		this.eduCess = eduCess;
	}
	public int getHigheduCess() {
		return higheduCess;
	}
	public void setHigheduCess(int higheduCess) {
		this.higheduCess = higheduCess;
	}
	public int getNetIncomeTax() {
		return netIncomeTax;
	}
	public void setNetIncomeTax(int netIncomeTax) {
		this.netIncomeTax = netIncomeTax;
	}
	

}
