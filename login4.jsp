<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title> Login Form </title>
  <link rel="stylesheet" href="style.css">

</head>
<body>

<div class="login-form">
  <form method=post>
    <h1>Login</h1>
    <div class="content">
      <div class="input-field">
        <input type="email" placeholder="Email" name=u id=u>
      </div>
      <div class="input-field">
        <input type="password" placeholder="Password" name=p id=p>
      </div>
      
    </div>
    <div class="action">
     
      <button type=submit >Login</button>
    </div>
  </form>
</div>

<%

String a=request.getParameter("u");
 String b=request.getParameter("p");
out.println(a);
out.println(b);

if(a=="abc@gmail.com")
{

String s="adminpage.html";
response.sendRedirect(s);
}
else
{
out.println("error");
}

%>


</body>
</html>
