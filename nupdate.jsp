<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<%
Integer a=Integer.parseInt(request.getParameter("nid"));
String b=request.getParameter("nname");
 Integer c=Integer.parseInt(request.getParameter("npno"));
 String d=request.getParameter("nadd");
Integer e=Integer.parseInt(request.getParameter("nrno"));
String f=request.getParameter("neid");
Integer g=Integer.parseInt(request.getParameter("did"));


try{

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root","");
String x="update nurse SET nname='"+b+"',nadd='"+d+"',neid='"+f+"',npno='"+c+"',did='"+g+"',nrno='"+e+"' WHERE nid='"+a+"'";

Statement st=con.createStatement();
out.println(x);
 st.executeUpdate(x);
con.close();
String s="nupdate.html";
response.sendRedirect(s);
}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>