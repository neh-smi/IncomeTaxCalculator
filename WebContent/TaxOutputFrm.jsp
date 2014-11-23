<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String netTaxableInc = (String)request.getAttribute("netTaxableInc");
String incomeTax=(String)request.getAttribute("incomeTax");
String surcharge=(String)request.getAttribute("surcharge");
String eduCess=(String)request.getAttribute("eduCess");
String higheduCess=(String)request.getAttribute("higheduCess");
String totTax=(String)request.getAttribute("totTax");
%>
<style>
table tr:nth-child(even) {
    background-color: #eee;
}

th{
	text-align: left;
}

</style>
<script type="text/javascript">
function openPage(pageURL)
{
window.location.href = pageURL;
}

</script>

<body>

<div style="background-color: #eee; color: blue; text-align: center; height: 700px">
	<h1>Income Tax</h1>
	<hr style="color: blue; height: 3px">
	<div align="right" style="padding: 10px; background-color:#B8B8B8">
		
			<input type="submit" value="Home" name="Home" id="home" onclick="openPage('Home.jsp')">
			<input type="submit" value="Calculator" name="Calculator" id="calc" onclick="openPage('TaxInputFrm.jsp')">
		
	</div>
	<hr style="color: blue; height: 3px">

<div style="background-color: #E0FFFF; margin: 10px; padding: 5px">
	<h2>Result </h2>
	<div style="background-color: #FAEBD7; margin: 20px; padding: 5px">
		<p>
		You need to pay <%=totTax %>
		</p>
	</div>
	<table style="font-family: verdana;  padding: 10px; width: 60%">
		<tr style="">
			<th > Taxable Income </th>
			<td><%=netTaxableInc %>
			
			</td>
		</tr>
		<tr>
			<th> Income Tax </th>
			<td><%=incomeTax %>
			</td>
		</tr>
		<tr>
			<th> Surcharge </th>
			<td><%=surcharge %>
			</td>
		</tr>
		<tr>
			<th> Education Cess </th>
			<td><%=eduCess %>
			</td>
		</tr>
		<tr>
			<th> Higher Education Cess </th>
			<td><%=higheduCess %>
			</td>
		</tr>
		<tr>
			<th> Total Tax Liability </th>
			<td><%=totTax %>
			</td>
		</tr>
		
	</table> 
</div>
</div>


</body>
</html>