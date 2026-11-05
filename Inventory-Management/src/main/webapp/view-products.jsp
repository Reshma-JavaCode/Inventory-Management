<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>
<body>

<div class="container mt-5">

    <h2 class="text-center mb-4">Inventory Management - Products</h2>

    <table class="table table-bordered table-striped">

        <thead class="table-dark">
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Description</th>
            </tr>
        </thead>

        <tbody>

            <c:forEach items="${products}" var="p">

                <tr>
                    <td>${p.productId}</td>
                    <td>${p.productName}</td>
                    <td>${p.category}</td>
                    <td>${p.price}</td>
                    <td>${p.quantity}</td>
                    <td>${p.description}</td>
                </tr>

            </c:forEach>

        </tbody>

    </table>

</div>

</body>
</html>
