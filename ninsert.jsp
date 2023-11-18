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
String x="insert into nurse (nid,nname,npno,nadd,nrno,neid,did) values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')";
out.println(x);
Statement st=con.createStatement();

 st.executeUpdate(x);
con.close();
String s="nurse.html";
response.sendRedirect(s);

}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>