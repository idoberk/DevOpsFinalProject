<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Result Page</title>
</head>
<body>
    <h1>Hello, <%= request.getParameter("username") %>!</h1>
    <a href="index.jsp">Back to Home</a>
</body>
</html>