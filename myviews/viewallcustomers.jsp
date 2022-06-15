<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>All Customer Details</h1>
<hr size="4" color="red"/>
<div style="background-color: yellow">
${tc}
</div>
<br>

<a href="insertNewCustomerForm">Insert New Customer</a>
&nbsp; | &nbsp;

<form action="viewFilterCustomers">
	<select name="filtercity">
		<c:forEach var="city" items="${uc}">
			<option>${city}</option>
		</c:forEach>
		<option>ShowAll</option>
	</select>
	<input type="Submit" value="filter"/>
</form>

<Br>

<hr size="4" color="red"/>
<br>
<h1>All Customers</h1>
 
 <!-- start of this table -->
<table border="2">
	<tr>
		<th>CID</th>
		<th>Customer Name</th>
		<th>Customer City</th>
		<th>Customer Acc Balance</th>
		<th>Edit Record</th>
		<th>Delete Record</th>
	</tr>
	
		<c:forEach var="customer" items="${allcustomers}">
		  
		<tr>
			<td>${customer.cid}</td>
			<td>${customer.cname}</td>
			<td>${customer.ccity}</td>
			<td>${customer.caccbalance}</td>
			
			
			<td><a href="editCustomerForm/${customer.cid}">Edit</a></td>
			<td><a href="deleteCustomer/${customer.cid}">Delete</a></td>
		</tr>
		</c:forEach> 
</table>
<p> </p>
<!-- End of this table -->

<bR>
<br>

<div style="background-color: yellow">
${tc}
</div>

</body>
</html>