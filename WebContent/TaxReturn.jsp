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
<h3>Tax returns</h3>

There are five categories of Income Tax returns.
<ol>
   <li> Normal return u/s 139(1)</li>
   <li> Belated return</li>
    <li>Revised return</li>
    <li>Defective return</li>
   <li> Returns in response to notices</li>
    </ol>

<h4>Normal return</h4>

Returns filed within the return filing due date, that is 31 July (for non audit assessees) or 30 September (for assessee or their firms liable for audit) 
of concerned assessment year.

<h4>Belated return</h4>
In case of failure to file the return on or before the due date, belated return can be filed before the expiry of one year from the end of the relevant assessment year.

<h4>Revised return</h4>
In case of any omission or any wrong statement mentioned in the normal return can be revised at any time before the expiry of one year from the end of the relevant 
assessment year.

<h4>Defective return</h4>
Assessing Officer considers that the return is defective, he may intimate the defect. One has to rectify the defect within a period of fifteen days from the date of such
 intimation. If the assessee wants more time, he can file an application to the A O and a further 15 days can be granted at the instance of the A O.

<h4>Returns in response To notices</h4>

Assessing officer in the process of making assessment, may serve a notice under various sections like 142(1), 148(1), 153A(a) or 153C. Returns are required to be furnished within the date specified on the respective notices. may be in case of the same

</div>
</div>


</body>
</html>