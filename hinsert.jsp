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
String x="insert into hospital (hid,hname,hpno,hadd,hrno,heid) values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')";
out.println(x);
Statement st=con.createStatement();

 st.executeUpdate(x);
con.close();
String s="hospital.html";
response.sendRedirect(s);

}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>