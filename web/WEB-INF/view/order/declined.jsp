<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Declined Orders</title>
</head>
<body>
<h1>Declined Orders</h1>
<p><a href="/main">menu</a></p>

<table>
    <tr>
        <th>Id</th>
        <th>Created at</th>
        <th>Total</th>
        <th>Accepted</th>
        <th>Accept</th>
    </tr>
    <c:forEach var="order" items="${orders}">
        <tr>
            <td>${order.id}</td>
            <td>${order.createdAt}</td>
            <td>${order.total}</td>
            <td>${order.accepted}</td>
            <td><a href="/order/accept/${order.id}">accept</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
