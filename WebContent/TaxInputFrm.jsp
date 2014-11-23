<%@page import="com.ibm.xtq.bcel.generic.SALOAD"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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

function CheckNumberOrNot(Age) {
   // var Age = document.getElementById("Age");
    var result = isNaN(Age.value);
   /*  if (!result) {
        alert("You are : " + Age.value + " years old.");
      return results;
    } else {
        alert("Not recognized as Valid No.");
        document.getElementById("rupee").focus();
        return false;
    }
     */
     if (result||Age.value=='') {
     	alert("Value either Null or Not Integer");
     	document.getElementById("income").focus();
     	 return false;
     } else {
     	// alert("value : " + Age.value );
         return results;
        
     }
       
}

function CheckNumberOrNot1(Age) {
	   // var Age = document.getElementById("Age");
	    var result = isNaN(Age.value);
	   /*  if (!result) {
	        alert("You are : " + Age.value + " years old.");
	      return results;
	    } else {
	        alert("Not recognized as Valid No.");
	        document.getElementById("rupee").focus();
	        return false;
	    }
	     */
	     if (result||Age.value=='') {
	     	alert("Value either Null or Not Integer");
	     	document.getElementById("ded").focus();
	     	 return false;
	     } else {
	     	// alert("value : " + Age.value );
	         return results;
	        
	     }
	       
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
<form method="post" action="taxCalculation">
	<table style="font-family: verdana;  padding: 10px; width: 60%">
		<tr>
			<th> Assessement Year </th>
			<td><select name="year">
					<option value="select">select</option>
					<option value="2015-16" selected="selected">2015-16</option>
					<option value="2014-15">2014-15</option>
					<option value="2013-14">2013-14</option>
				</select>
			</td>
		</tr>
		<tr>
			<th> Male/Female/Senior Citizen </th>
			<td><select name="payer">
					<option value="select">select</option>
					<option value="male">Male</option>
					<option value="female" selected="selected">Female</option>
					<option value="senior citizen">Senior Citizen</option>
					<option value="super senior citizen"> Super Senior Citizen</option>
				</select>
			</td>
		</tr>
		<tr>
			<th> Income from Salary </th>
			<td><input name="salincome" type="text" value="" id="income" onblur="CheckNumberOrNot(document.getElementById('income'), true)">
			</td>
		</tr>
		<tr>
			<th> Deductions </th>
			<td><input name="deduction" type="text" id="ded" onblur="CheckNumberOrNot1(document.getElementById('ded'), true)">
			</td>
		</tr>
		<tr>
			<td colspan="2">
			
				<input type="Submit" name="Calculate" value="Calculate" onclick="return CheckNumberOrNot(document.getElementById('income'), true)"
						/>
			</td>
		</tr>
	</table>
	
</form>
</div>
</div>
</body>
</html>