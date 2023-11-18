<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<%

String a=request.getParameter("u");
 String b=request.getParameter("p");
out.println(a);
out.println(b);
Class.forName("com.mysql.jdbc.Driver"); 

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root",""); 

PreparedStatement st = con.prepareStatement("select username,password from doctor where username=?");

st.setString(1,a); 

ResultSet rs = st.executeQuery();
if (rs.next() == false)
{
	
	}
else
{
	do 
	{ 
		String x=rs.getString(1);
		String y=rs.getString(2);
		

if(a.equals(x) && b.equals(y))
{

String s="adminpage.html";
response.sendRedirect(s);
}
else
{
out.println(" Invalid Username and Password");
out.println(" <meta http-equiv="refresh" content="5"; url="login3.html">");

}
			       		
		}
	while (rs.next());
	}


			        


%>