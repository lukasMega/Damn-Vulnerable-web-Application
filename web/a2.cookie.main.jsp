<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%
    String login = null;
    Cookie[] cookies = request.getCookies();
    if(cookies !=null){
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("login"))
                login = cookie.getValue();
        }
    }
    if(login == null) response.sendRedirect("a2.cookie.login.jsp");
%>

<t:master>
    <jsp:attribute name="title">DVA - Welcome ${cookie.login.value}</jsp:attribute>

    <jsp:body>
        <h1>Welcome ${cookie.login.value}</h1>

        <a href="/CookieLogoutServlet" class="btn btn-primary">Logout</a>
    </jsp:body>
</t:master>
