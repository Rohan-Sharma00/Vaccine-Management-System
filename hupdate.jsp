<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<%
Integer a=Integer.parseInt(request.getParameter("hid"));
String b=request.getParameter("hname");
 Integer c=Integer.parseInt(request.getParameter("hpno"));
 String d=request.getParameter("hadd");
Integer e=Integer.parseInt(request.getParameter("hrno"));
String f=request.getParameter("heid");



try{

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root","");
String x="update hospital SET hname='"+b+"',hadd='"+d+"',heid='"+f+"',hpno='"+c+"',hrno='"+e+"' WHERE hid='"+a+"'";

Statement st=con.createStatement();
out.println(x);
 st.executeUpdate(x);
 out.println("update successful");
con.close();
String s="hupdate.html";
response.sendRedirect(s);
}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>