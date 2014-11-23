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

<div style=" text-align: left">
<h3>Current Tax Table</h3>

<img alt="TaxTable" src="Current TaxTable.jpg">
</div>
</div>

</body>
</html>