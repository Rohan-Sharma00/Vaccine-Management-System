<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<%

String a=request.getParameter("u");
 String b=request.getParameter("p");
out.println(a);
out.println(b);

if(a.equals("abc@gmail.com") && b.equals("abc"))
{

String s="adminpage.html";
response.sendRedirect(s);
}
else
{
	if(a.equals("xyz@gmail.com") && b.equals("xyz"))
	{

	String s="hospitalpage.html";
	response.sendRedirect(s);
	}
	else
	{
		
		if(a.equals("pqr@gmail.com") && b.equals("pqr"))
		{

			String s="doctorpage.html";
			response.sendRedirect(s);
		}
		else
		{

		
		
		}
		
	}
out.println("error");
}
			        


%>