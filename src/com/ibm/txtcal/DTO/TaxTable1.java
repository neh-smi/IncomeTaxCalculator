package com.ibm.txtcal.DTO;

public class TaxTable1 { // for year 2015-16
	
	/* Age:: 0 - 60
	 * 
	 * Slab0 :       0 - 250000
	 * Slab1 :  250000 - 500000
	 * Slab2 :  500000 - 1000000
	 * Slab3 : 1000000 - ...
	 */
	
	/* Age:: 60 - 80
	 * 
	 * Slab0 :       0 - 300000
	 * Slab1 :  300000 - 500000
	 * Slab2 :  500000 - 1000000
	 * Slab3 : 1000000 - ...
	 */
	
	/* Age:: 80 - ...
	 * 
	 * Slab0 :       0 - 500000
	 * Slab1 :  500000 - 1000000
	 * Slab2 : 1000000 - ...
	 */
	
	
		public int gen_Slab0_UL=250000;
		public int gen_Slab1_UL=500000;
		public int gen_Slab2_UL=1000000;
			
	
	
	
		public int sen_Slab0_UL=30000;
		public int sen_Slab1_UL=500000;
		public int sen_Slab2_UL=1000000;
			
	
	
	
		public int supsen_Slab0_UL=500000;
		public int supsen_Slab1_UL=1000000;
					

	

}
