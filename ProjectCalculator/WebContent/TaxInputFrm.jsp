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
     	document.getElementById("rupee").focus();
     	 return false;
     } else {
     	 alert("value : " + Age.value );
         return results;
        
     }
       
}




</script>

<body>
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
			<td><input name="salincome" type="text" value="" id="rupee" onblur="CheckNumberOrNot(document.getElementById('rupee'), true)">
			</td>
		</tr>
		<tr>
			<th> Deductions </th>
			<td><input name="deduction" type="text" id="rupee" onblur="CheckNumberOrNot(document.getElementById('rupee'), true)">
			</td>
		</tr>
		<tr>
			<td colspan="2">
			
				<input type="Submit" name="Calculate" value="Calculate" onclick="CheckNumberOrNot(document.getElementById('rupee'), true)"
						/>
			</td>
		</tr>
	</table>
	
</form>
</body>
</html>