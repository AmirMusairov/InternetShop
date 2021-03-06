<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Warehouse</title>
</head>
<body>
<h1>Products</h1>
<p><a href="/main">menu</a></p>

<table>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Count</th>
        <th>Add to bucket</th>
    </tr>
    <c:forEach var="pair" items="${products}">
        <tr>
            <td>${pair.key.name}</td>
            <td>${pair.key.price}</td>
            <td>${pair.value}</td>
            <td><a href="/bucket/add-product/${pair.key.id}">add</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
