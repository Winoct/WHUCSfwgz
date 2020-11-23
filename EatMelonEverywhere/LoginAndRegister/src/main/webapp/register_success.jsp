<%--
  Created by IntelliJ IDEA.
  User: yangbohan
  Date: 2020/11/23
  Time: 8:49 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    request.setCharacterEncoding("UTF-8") ;
%>
<jsp:include page="header.jsp">
    <jsp:param name="name" value="注册成功！"/>
</jsp:include>
<div class="container text-center">
    <h1 class="text-success">注册成功</h1>
    <a href="login.jsp" class="btn btn-secondary" role="button">返回登陆页面</a>
</div>

<div style="height: 60px"></div>
<nav class="navbar navbar-dark bg-dark fixed-bottom">
<jsp:include page="footer.jsp" flush="true"></jsp:include>