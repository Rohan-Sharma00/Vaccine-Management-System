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
String x="insert into vaccine1 (vid,vname,vtdose,vmdate,vedate,did) values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')";
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