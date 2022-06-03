<html>
<head><title>First JSP</title></head>
<body>
  <%
    double num = Math.random();
    if (num > 0.95) {
  %>
      <h2>You'll have a luck day!</h2><p>(<%= num %>)</p>
  <%
    } else {
  %>
      <h2>Well, life goes on ... </h2><p>(<%= num %>)</p>
  <%
    }
  %>
  <a href="<%= request.getRequestURI() %>"><h3>Try Again</h3></a>
</body>
</html>
To execute the JSP script: Simply start your Tomcat server and use a browser to issue an URL to browse the JSP page (i.e., http://localhost:8080/hello/first.jsp).

From your browser, choose the "View Source" option to check the response message. It should be either of the followings depending on the random number generated.

<html>
<h2>You'll have a luck day!</h2>
<p>(0.987)</p>
<a href="first.jsp"><h3>Try Again</h3></a>
</html>
<html>
<h2> Well, life goes on ... </h2>
<p>(0.501)</p>
<a href="first.jsp"><h3>Try Again</h3></a>
</html>