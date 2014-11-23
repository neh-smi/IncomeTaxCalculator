package com.ibm.txtcal.DAO;

import com.ibm.txtcal.DTO.IncomeInfo;
import com.ibm.txtcal.DTO.TaxTable1;
import com.ibm.txtcal.DTO.TaxTable2;
import com.ibm.txtcal.DTO.TaxInfo;

public class IncomeTaxCalculation {

	private TaxInfo taxInfo=new TaxInfo();
	private TaxTable1 tt1 = new TaxTable1();
	private TaxTable2 tt2 = new TaxTable2();
	
	public TaxInfo TaxCalculation(IncomeInfo incomeInfo )
	{
		int netTaxableInc=0;
		int incomeTax=0;
		int surcharge=0;
		int eduCess=0;
		int higheduCess=0;
		int netIncomeTax=0;
		
		
		netTaxableInc= getTaxableInc(incomeInfo.getSalIncome(), incomeInfo.getDeduction());
		System.out.println("net taxable income=="+netTaxableInc);
		
		
		incomeTax=TaxCal(incomeInfo.getAssYear(), incomeInfo.getPayerType(), netTaxableInc);
		
		surcharge = surchargeCal(incomeTax, netTaxableInc);
		
		eduCess = (surcharge+incomeTax)*2/100;
		
		higheduCess = (surcharge+incomeTax)*1/100;
		
		netIncomeTax= incomeTax + surcharge +eduCess + higheduCess;
		
		taxInfo.setNetTaxableIncome(netTaxableInc);
		taxInfo.setIncomeTax(incomeTax);
		taxInfo.setSurcharge(surcharge);
		taxInfo.setEduCess(eduCess);
		taxInfo.setHigheduCess(higheduCess);
		taxInfo.setNetIncomeTax(netIncomeTax);
		
		return taxInfo;
				
	}
	
	public int getTaxableInc(int Inc , int Ded){
		
		return (Inc- Ded);
		
	}
	 
	public int TaxCal (String year, String payer , int taxableInc){
		System.out.println("inside method cal...");
		System.out.println("year =="+year+"  payer=="+payer+"  taxable income=="+taxableInc);
		
		int Slab0_UL=0, Slab1_UL=0 , Slab2_UL=0;
		int tax=0;
		
		if(year.equalsIgnoreCase("2015-16")){
			System.out.println(" in year comparison..." );
			if(payer.equalsIgnoreCase("male")|| payer.equalsIgnoreCase("female")){
				System.out.println(" age grp general.." );
				Slab0_UL=tt1.gen_Slab0_UL;
				Slab1_UL=tt1.gen_Slab1_UL;
				Slab2_UL=tt1.gen_Slab2_UL;
			}
			else if(payer.equalsIgnoreCase("senior citizen")){
				System.out.println("senior citizen");
				Slab0_UL=tt1.sen_Slab0_UL;
				Slab1_UL=tt1.sen_Slab1_UL;
				Slab2_UL=tt1.sen_Slab2_UL;
			}
			else if(payer.equalsIgnoreCase("super senior citizen" )){
				System.out.println("super senior");
				Slab0_UL=tt1.supsen_Slab0_UL;
				Slab1_UL=tt1.supsen_Slab1_UL;
				Slab2_UL=0;
			}
			
		}
		else {
			System.out.println("year change............14-13");
			if(payer.equalsIgnoreCase("male")|| payer.equalsIgnoreCase("female")){
				Slab0_UL=tt2.gen_Slab0_UL;
				Slab1_UL=tt2.gen_Slab1_UL;
				Slab2_UL=tt2.gen_Slab2_UL;
			}
			else if(payer.equalsIgnoreCase("senior citizen")){
				Slab0_UL=tt2.sen_Slab0_UL;
				Slab1_UL=tt2.sen_Slab1_UL;
				Slab2_UL=tt2.sen_Slab2_UL;
			}
			else if(payer.equalsIgnoreCase("super senior citizen" )){
				Slab0_UL=tt2.supsen_Slab0_UL;
				Slab1_UL=tt2.supsen_Slab1_UL;
				Slab2_UL=0;
			}
					
		}
		
		System.out.println(" slab0::"+Slab0_UL);
		System.out.println(" slab 1::" +Slab1_UL);
		System.out.println("slab 2::"+Slab2_UL);
		
		if(!payer.equalsIgnoreCase("super senior citizen")){
			if(taxableInc <= Slab0_UL){//<2lac
				System.out.println("in first part" );
				tax= 0;
			}
			else if(taxableInc > Slab0_UL && taxableInc <= Slab1_UL){//>2lac &&<=5lac
				System.out.println("in 2nd part");
				tax= (taxableInc - Slab0_UL)*10/100;
			}
			else if(taxableInc > Slab1_UL && taxableInc <= Slab2_UL){//>5lac && <10lac
				System.out.println("in 3rd part");
				tax= (((Slab1_UL-Slab0_UL)*10/100)+
						(taxableInc - Slab1_UL)*20/100);
			}
				
			else if(taxableInc>Slab2_UL){//>10lac
				System.out.println("in last part");
				tax= (((Slab1_UL-Slab0_UL)*10/100) +
						((Slab2_UL-Slab1_UL)*20/100) + 
						(taxableInc - Slab2_UL)*30/100);
			}
		
			if(taxableInc <= 500000){
				tax-=2000;// tax refund 
				if(tax<0){
					tax=0;
				}
			}
				
		}else{
			if(taxableInc <= Slab0_UL){//<5lac
				System.out.println("in first part" );
				tax= 0;
			}
			else if(taxableInc > Slab0_UL && taxableInc <= Slab1_UL){//>5lac &&<=10lac
				System.out.println("in 2nd part");
				tax= (taxableInc - Slab0_UL)*20/100;
			}
			else if(taxableInc>Slab1_UL){//>10lac
				System.out.println("in last part");
				tax= (((Slab1_UL-Slab0_UL)*20/100) +
						(taxableInc - Slab1_UL)*30/100);
			}
		}
		
	
		return tax;
		
	}

	public int surchargeCal(int IncomeTax,int taxableInc){
		int surcharge=0;
		
		if(taxableInc > 10000000)
			surcharge=IncomeTax*10/100;
		
			
		return surcharge;
	}
}
