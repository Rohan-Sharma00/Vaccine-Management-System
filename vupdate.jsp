<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<%
Integer a=Integer.parseInt(request.getParameter("vid"));
String b=request.getParameter("vname");
 Integer c=Integer.parseInt(request.getParameter("vtdose"));
 String d=request.getParameter("vmdate");
String e=request.getParameter("vedate");
Integer f=Integer.parseInt(request.getParameter("did"));




try{

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root","");
String x="update vaccine1 SET vname='"+b+"',vtdose='"+c+"',vmdate='"+d+"',vedate='"+e+"',did='"+f+"' WHERE vid='"+a+"'";

Statement st=con.createStatement();
out.println(x);
 st.executeUpdate(x);
 out.println("update successful");
con.close();
String s="vupdate.html";
response.sendRedirect(s);
}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>