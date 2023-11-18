<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<%

Integer a=Integer.parseInt(request.getParameter("pid"));
String b=request.getParameter("pname");
 Integer c=Integer.parseInt(request.getParameter("ppno"));
 String d=request.getParameter("padd");
String e=request.getParameter("pdname");
String f=request.getParameter("peid");
Integer g=Integer.parseInt(request.getParameter("did"));
Integer h=Integer.parseInt(request.getParameter("hid"));
Integer i=Integer.parseInt(request.getParameter("vid"));

try{

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root","");
String x="update patient SET pname='"+b+"',padd='"+d+"',pdname='"+e+"',peid='"+f+"',ppno='"+c+"',did='"+g+"',hid='"+h+"',vid='"+i+"' WHERE pid='"+a+"'";

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