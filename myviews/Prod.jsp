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
<table border="2" cellpadding="2"> 
<c:forEach var="product" items="${allproducts}"> 
<tr>
 	
 	<td>
  <div class="products-column col-md-3 p-3" onclick="modalProduct()" style="cursor:pointer">
                    <div class="card">
                        <img src="images/sakuna.jpg" class="card-img-top" alt="...">
                        <div class="card-body d-flex flex-column h-100">
                            <h3 class=" card-title font-weight-bold">${product.productname}</h3>
                            <p class="flex-grow-1 card-text text-secondary">${product.pprice}
                            </p>
                            <div class = "rating d-flex mt-1">
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                                <span>
                                    <i class = "fa fa-star"></i>
                                </span>
                            </div>

                            <div class="d-flex justify-content-end">
                                <a href="" target="_blank"
                                    class="products-button text-white mt-3 mt-md-0"><i
                                        class="fa fa-cart-plus"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
<td>
<tr>
	</c:forEach>
</table>
</body>
</html>