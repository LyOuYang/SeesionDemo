<%--
  Created by IntelliJ IDEA.
  User: dehong
  Date: 2018/8/31
  Time: 12:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String username = "";
    Cookie[] cookies = request.getCookies();
    if (cookies!=null){
        for (Cookie s :cookies){
            if ("username".equals(s.getName()))
                username = s.getValue();
        }
    }
    String s = (String) request.getAttribute("warn");
    if (s!=null){
        //out.print(s);
%>
<span style="color: red; font-size: 10px "><%=s%></span>
<%
    }
%>
<form action="/LoginServlet" method="post">
    用户名：<input type="text" name="username" value=<%=username%>><br>
    密&emsp;码：<input type="password" name="password"><br>
    <input type="submit" value="登陆" >
</form>
</body>
</html>
