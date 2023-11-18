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
out.println(a);
out.println(b);
out.println(c);
out.println(d);
out.println(e);
out.println(f);
out.println(g);
out.println(h);


Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root","");
String x="insert into doctor (did,dname,dadd,dlno,deid,dpno,username,password) values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"')";
out.println(x);
Statement st=con.createStatement();

 st.executeUpdate(x);
con.close();
String s="doctor.html";
response.sendRedirect(s);

}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>