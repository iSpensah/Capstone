<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>

<h1>All Customers</h1>
<table border="2" cellpadding="2">

<tr>
			<th align="center">Product ID</th>
			<th align="center">Product Name</th>
			<th align="center">Product Price</th>
			<th align="center">Category</th>
			<th align="center">Company Name</th>
			<th align="center">Released Date</th>
			<th align="center">Stocks</th>
			<th align="center">Item Sold</th>
			<th align="center">Description</th>
			<th align="center">Image</th>
			<th align="center">Edit Record</th>
			<th align="center">Delete Record</th>
		</tr>


<c:forEach var="product" items="${allproducts}">

<tr>
				<td align="center">${product.productid}</td>
				<td align="center">${product.productname}</td>
				<td align="center">${product.pprice}</td>
				<td align="center">${product.categoryid}</td>
				<td align="center">${product.companyname }</td>
				<td align="center">${product.dateReleased}</td>
				<td align="center">${product.QOH}</td>
				<td align="center">${product.salesNum}</td>
				<td align="center">${product.pdescription}</td>
				<td align="center">${product.imagepath}</td>
			
				<td align="center"><a href="">Edit</a></td>
				<td align="center"><a href="">Delete</a></td>
			</tr>

</c:forEach>
</table>

<!--

			<br> Total Customer : ${tc} <br> <br> 
			<a href="home">Back to Home Page</a> -->
</body>
</html>