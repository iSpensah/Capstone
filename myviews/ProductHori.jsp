<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.horizontal {
  display: inline;
  float:left;
  padding:10px 5px;
  border:1px solid #dddddd;
  margin-right:5px;
  }
</style>
</head>
<body>

<table>
<tr>
<th>
<form action="viewFilterCustomers">
	<input type = "submit" > </input>
<input type="checkbox" id="vehicle1" name="vehicle1" value="Casual">
<label for="vehicle1"> Casual</label>
<input type="checkbox" id="vehicle2" name="vehicle2" value="Adventures">
<label for="vehicle2"> Adventures</label>
<input type="checkbox" id="vehicle3" name="vehicle3" value="Horror">
<label for="vehicle3"> Horror</label><br><br>
</form>
<form>
	<select name="filtercity">
		<c:forEach var="city" items="${uc}">
			<option>${city}</option>
		</c:forEach>
		<option>ShowAll</option>
	</select>
</form>
</th>
</tr>
</table>

<div>
<ul>
<c:forEach var="product" items="${allproducts}">

  <li class="horizontal" style="display: inline;">
    <div class="product">
      <div class="image">
        <img class="img-responsive" src="http://www.shingpoint.com.pk/Images/Thumbnails/pc-a1-470-59100-080316082835.jpg" />
      </div>
      <div class="description">
        <h4 class="productname">${product.productname}</h4>
      </div>
      <div class="price">
       <h4>Price: <span>${product.pprice}</span></h4>
       <p>Stocks <span>${product.QOH}</span></p>
        <input type="button" class="btn btn-primary btn-sm" value="Details" />
        <input type="button" class="btn btn-primary btn-sm" value="Add to Cart" />
      </div>
    </div>
  </li>

</c:forEach>
</ul>
</div>

</body>
</html>