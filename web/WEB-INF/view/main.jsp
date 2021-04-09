<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Menu</title>
</head>
<body>
<h1>Hello Servlet</h1>
<p>Welcome : ${name}</p>

<h2>Menu</h2>
<ul>
    <li><a href="/warehouse/products">Show product list</a></li>
    <li><a href="/bucket/products">Show products in the bucket</a></li>
    <li><a href="/bucket/clear">Clear bucket</a></li>
    <li><a href="/order/make">Make an order</a></li>
    <li><a href="/order/history">Order history</a></li>
    <li><a href="/order/declined">Accept saved orders</a></li>
    <li><a href="/logout">Exit</a></li>
</ul>
</body>
</html>
