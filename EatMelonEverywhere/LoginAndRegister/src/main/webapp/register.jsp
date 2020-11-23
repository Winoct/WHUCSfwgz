<%--
  Created by IntelliJ IDEA.
  User: yangbohan
  Date: 2020/11/22
  Time: 8:50 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    request.setCharacterEncoding("UTF-8");
%>
<jsp:include page="header.jsp">
    <jsp:param name="name" value="注册"/>
</jsp:include>

<div class="container">
    <div class="row">
        <div class="col-sm-3"></div>
        <div class="col-sm-6">
            <div class="card">
                <h4 class="card-header">注册</h4>
                <div class="card-body">
                    <form action="register" method="post">
                        <div class="form-row">
                            <label>用户名</label>
                            <input type="text" name="username"class="form-control" placeholder="输入您的用户名" value="${param.username}">
                            <% if(request.getAttribute("nameError")!=null) {%>
                            <small class="form-text text-danger">用户名需包含8～20个大小写英文字母、数字以及下划线'_'</small>
                            <% }else if(request.getAttribute("nameExist")!=null){%>
                            <small class="form-text text-danger">该用户名已被注册！</small>
                            <%}else{ %>
                            <small class="form-text text-muted">用户名可包含8～20个大小写英文字母、数字以及下划线'_'</small>
                            <%};%>
                        </div>
                        <div class="form-row">
                                <label>昵称</label>
                                <input type="text" name="nickName" class="form-control" placeholder="输入您的昵称" value="${param.nickName}">
                                <small class="form-text text-muted">昵称为您展示给别人的名称</small>
                        </div>
                        <div class="form-row">

                                <label>密码</label>
                                <input type="password" name="password1" class="form-control" placeholder="输入您的密码">
                                <% if(request.getAttribute("passwordError")!=null) {%>
                                <small class="form-text text-danger">密码至少8-16个字符,包括大小写字母、数字以及下划线'_'</small>
                                <%}else{ %>
                                <small class="form-text text-muted">密码至少8-16个字符,包括大小写字母、数字以及下划线'_'</small>
                                <%};%>
                        </div>
                        <div class="form-row">
                            <label>重复输入密码</label>
                            <input type="password" name="password2" class="form-control" placeholder="再次输入您的密码">
                            <% if(request.getAttribute("passwordError")!=null) {%>
                            <small class="form-text text-danger">两次密码输入不一致</small>
                            <%};%>
                        </div>
                        <div class="form-row">
                            <label>邮箱</label>
                            <input type="email" name="mailAddress"class="form-control" placeholder="输入您的邮箱" value="${param.mailAddress}">
                            <% if(request.getAttribute("emailExist")!=null) {%>
                            <small class="form-text text-danger">该邮箱已被注册！</small>
                            <%};%>
                        </div>
                        <div class="form-row">
                            <label>手机号</label>
                            <input type="number" name="phoneNumber" class="form-control" placeholder="输入您的手机号" value="${param.phoneNumber}">
                            <% if(request.getAttribute("phoneNumberExist")!=null) {%>
                            <small class="form-text text-danger">该手机已被注册！</small>
                            <%}else{ %>
                            <small class="form-text text-muted">我们不会把您的手机号与他人分享</small>
                            <%};%>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label>性别</label>
                                <div class="form-group">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="sex" id="male" value="男"
                                               <% if(request.getParameter("sex")!=null&& request.getParameter("sex").equals("男")) {%>
                                                checked
                                               <%};%>
                                        >
                                        <label class="form-check-label" for="male">男</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="sex" id="female" value="女"
                                            <% if(request.getParameter("sex")!=null&& request.getParameter("sex").equals("女")) {%>
                                               checked
                                            <%};%>
                                        >
                                        <label class="form-check-label" for="female">女</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col form-group">
                                <button type="submit" class="btn btn-primary btn-lg btn-block login-button">注册！</button>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col form-group">
                                <a href="login.jsp">已有账号？登陆</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
        <div class="col-sm-3"></div>
    </div>
</div>


<div style="height: 60px"></div>
<nav class="navbar navbar-dark bg-dark">
<jsp:include page="footer.jsp" flush="true"></jsp:include>
