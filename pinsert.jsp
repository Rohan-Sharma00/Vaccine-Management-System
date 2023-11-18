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
String x="insert into Patient (pid,pname,ppno,padd,pdname,peid,did,hid,vid) values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"')";
out.println(x);
Statement st=con.createStatement();

 st.executeUpdate(x);
con.close();
String s="patient.html";
response.sendRedirect(s);

}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>