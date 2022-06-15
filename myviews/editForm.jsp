<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.read
{
	background-color: yellow;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="../updateCustomerDetail">

C id : <input class="read" type="number" required name="cid" value='${customer.cid}' readonly/><br>
C Name <input class="read" type="text" required name="cname" value='${customer.cname}' readonly/><br>
C City<input type="text" required name="ccity" value='${customer.ccity}'/><Br>
C Balance <input type="number" required name="cbalance" value='${customer.caccbalance}'/><br>

<input type="submit" value="Update."/>

</form>

</body>
</html>