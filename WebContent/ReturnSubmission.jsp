<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">

function openPage(pageURL)
{
window.location.href = pageURL;
}

</script>
<body>
<div style="background-color: #eee; color: blue; text-align: center; height: 100%">

	<h1>Income Tax</h1>
	<hr style="color: blue; height: 3px">
	<div align="right" style="padding: 10px; background-color:#B8B8B8">
		
			<input type="submit" value="Home" name="Home" id="home" onclick="openPage('Home.jsp')">
			<input type="submit" value="Calculator" name="Calculator" id="calc" onclick="openPage('TaxInputFrm.jsp')">
		
	</div>
	<hr style="color: blue; height: 3px">

<div style=" text-align: left; margin: 5px">
<h3>Due date of submission of return</h3>
The due date of submission of return shall be ascertained according to section 139(1) of the Act as under:-
<table border="2px">
	<tr >
		<td rowspan="3" >
			30 September of the Assessment Year(AY)
		</td>
		<td>
			If the assessee is a company (not having any inter-nation transaction), or
		</td>
	</tr>
	<tr>
		<td>
			If the assessee is any person other than a company whose books of accounts are required to be audited under any law, or
		</td>
	</tr>
	<tr>
		<td>
			If the assessee is a working partner in a firm whose books of accounts are required to be audited under any law.
		</td>
	</tr>
	<tr>
		<td>
			30 November of the AY 
		</td>
		<td>
		If the assessee is a company and it is required to furnish report under section 92E pertaining to international transactions.
		</td>
	</tr>
	<tr>
		<td>
			31 July of the AY 
		</td>
		<td>
			In any other case.
		</td>
	</tr>

</table>
 	
<p>
If the Income of a Salaried Individual is less than Rs 500,000 and he has earned income through salary or Interest or both, such Individuals are exempted from 
filing their Income Tax return provided that such payment has been received after the deduction of TDS and this person has not earned interest more than Rs 10,000 
from all source combined. Such a person should not have changed jobs in the financial year.
</p>
<p>
CBDT has announced that all individual/HUF taxpayers with income more than Rs 500,000 are required to file their income tax returns online.
 However, digital signatures wont be mandatory for such class of taxpayers.
 </p>

</div>
</div>

</body>
</html>