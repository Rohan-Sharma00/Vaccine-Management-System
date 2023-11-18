<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<%


Integer a=Integer.parseInt(request.getParameter("did"));
String b=request.getParameter("dname");
 String c=request.getParameter("dadd");
Integer d=Integer. parseInt(request.getParameter("dlno"));
String e=request.getParameter("deid");
Integer f=Integer.parseInt(request.getParameter("dpno"));
String g=request.getParameter("username");
String h=request.getParameter("password");

try{

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root","");
String x="update doctor SET dname='"+b+"',dadd='"+c+"',dlno='"+d+"',deid='"+e+"',dpno='"+f+"',username='"+g+"',password='"+h+"' WHERE did='"+a+"'";

Statement st=con.createStatement();
out.println(x);
 st.executeUpdate(x);
 out.println("update successful");
con.close();
String s="dupdate.html";
response.sendRedirect(s);
}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>