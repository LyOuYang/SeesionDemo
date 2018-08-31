<%--
  Created by IntelliJ IDEA.
  User: dehong
  Date: 2018/8/31
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String s = (String) session.getAttribute("username");
    if (s==null)
        out.println("您还未登陆");
    else{
%>
<h1 >欢迎<%= s%>的光临</h1>
<%
    }
%>
</body>
</html>
