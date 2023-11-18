 <%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
 
<%

    try {

 

        Class.forName("com.mysql.jdbc.Driver"); 

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root",""); 

        PreparedStatement st = con.prepareStatement("select * from doctor where did=?");
		Integer i=1;
        st.setInt(1,i); 

        ResultSet rs = st.executeQuery();

        ResultSetMetaData rsmd = rs.getMetaData(); 

        if (rs.next()) 
        {
        	
        	
        	out.print("<center><h2>Doctor Details</h2></center>");

            out.print("<h4><table width=35% border=2 align=center>");

            out.print("<tr>");

            out.print("<td>" + "Doctor ID" + "</td>");

            out.print("<td>" + rs.getInt(1) + "</td></tr>");

            out.print("<tr><td>" +"Doctor Name"  + "</td>");

            out.print("<td>" + rs.getString(2) + "</td></tr>");

            out.print("<tr><td>" + "Doctor Address" + "</td>");

            out.print("<td>" + rs.getString(3) + "</td></tr>");

            out.print("<tr><td>" + "Doctor License Number" + "</td>");

            out.print("<td>" + rs.getInt(4) + "</td></tr>");

            out.print("<tr><td>" + "Doctor Email ID" + "</td>");

            out.print("<td>" + rs.getString(5) + "</td></tr>");

            out.print("<tr><td>" + "Doctor Phone Number" + "</td>");

            out.print("<td>" + rs.getInt(6) + "</td></tr>");

            out.print("<tr><td>" + "Username" + "</td>");

            out.print("<td>" + rs.getString(7) + "</td></tr>");
            
            out.print("<tr><td>" + "Password" + "</td>");

            out.print("<td>" + rs.getString(8) + "</td></tr></h4>");

            out.println("</table>"); 


		}
  		  }

    
catch (Exception ex) {

        System.out.println(ex);

    }

%>