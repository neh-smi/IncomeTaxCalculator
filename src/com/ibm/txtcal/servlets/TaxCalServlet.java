package com.ibm.txtcal.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibm.txtcal.DAO.IncomeTaxCalculation;
import com.ibm.txtcal.DTO.IncomeInfo;
import com.ibm.txtcal.DTO.TaxInfo;

/**
 * Servlet implementation class TaxCalServlet
 */
@WebServlet("/TaxCalServlet")
public class TaxCalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TaxCalServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		IncomeInfo personIncomeIfo=new IncomeInfo();
		IncomeTaxCalculation incomeIaxCal=new IncomeTaxCalculation();
		String submit = request.getParameter("Calculate");
		if (submit != null) {
			if (submit.equalsIgnoreCase("Calculate")) {

				String assYear = request.getParameter("year");
				String payerType = request.getParameter("payer");
				String income=request.getParameter("salincome");
				String deduction=request.getParameter("deduction");
				System.out.println("Infor======="+assYear+payerType+income+deduction);
				
				if(assYear!=null && !assYear.equalsIgnoreCase(""))
				{
					personIncomeIfo.setAssYear(assYear);	
				}
				if(payerType!=null && !payerType.equals(""))
				{
					personIncomeIfo.setPayerType(payerType);
				}
				if(income!=null && !income.equals(""))
				{
					personIncomeIfo.setSalIncome(Integer.parseInt(income));
				}
				if(deduction!=null && !deduction.equals(""))
				{
					personIncomeIfo.setDeduction(Integer.parseInt(deduction));
				}
				
						
				TaxInfo taxInfo=incomeIaxCal.TaxCalculation(personIncomeIfo);
				System.out.println("taxInfo======="+taxInfo.getNetIncomeTax()+taxInfo.getSurcharge()+taxInfo.getEduCess());
				request.setAttribute("netTaxableInc",String.valueOf(taxInfo.getNetTaxableIncome()) );
				request.setAttribute("incomeTax", String.valueOf(taxInfo.getIncomeTax()));
				request.setAttribute("surcharge", String.valueOf(taxInfo.getSurcharge()));
				request.setAttribute("eduCess", String.valueOf(taxInfo.getEduCess()));
				request.setAttribute("higheduCess", String.valueOf(taxInfo.getHigheduCess()));
				request.setAttribute("totTax", String.valueOf(taxInfo.getNetIncomeTax()));
				request.getRequestDispatcher("TaxOutputFrm.jsp").forward(request, response);
			}
						
		}
	}

}
