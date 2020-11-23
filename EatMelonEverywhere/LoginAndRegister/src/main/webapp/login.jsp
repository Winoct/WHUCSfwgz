<%--
  Created by IntelliJ IDEA.
  User: yangbohan
  Date: 2020/11/22
  Time: 3:59 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    request.setCharacterEncoding("UTF-8") ;
%>
<jsp:include page="header.jsp">
    <jsp:param name="name" value="登陆"/>
</jsp:include>

<div class="container" style="margin-top: 50px;">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <div class="card">
                <article class="card-body">
                    <a href="register.jsp" class="float-right btn btn-outline-primary">注册</a>
                    <h4 class="card-title mb-4 mt-1">登陆</h4>
                    <form>
                        <div class="form-group">
                            <label>用户名</label>
                            <input name="" class="form-control" placeholder="请输入您的用户名" type="email">
                        </div> <!-- form-group// -->
                        <div class="form-group">
                            <a class="float-right" href="#">忘记密码?</a>
                            <label>密码</label>
                            <input class="form-control" placeholder="请输入您的密码" type="password">
                        </div> <!-- form-group// -->
                        <div class="form-group">
                            <div class="checkbox">
                                <label> <input type="checkbox"> 保存密码 </label>
                            </div> <!-- checkbox .// -->
                        </div> <!-- form-group// -->
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block"> 登陆  </button>
                        </div> <!-- form-group// -->
                    </form>
                </article>
            </div> <!-- card.// -->

        </div>
        <div class="col-sm-4"></div>
    </div>
</div>

<div style="height: 60px"></div>
<nav class="navbar navbar-dark bg-dark fixed-bottom">
<jsp:include page="footer.jsp" flush="true"></jsp:include>
