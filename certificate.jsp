<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<html>
<head>
	<title>cartificate</title>
	<style>
		body{
			font-family: "comic sans ms", sans serif;
			background-color:#6CBB3C;
			margin: 0;
			
		}

        h1{
            font-size: 60px;
            background-color:aqua;
			color: white;
			padding: 10px;
			text-align: center;
        }
		
        .button {
			border: none;
    display: block;
    background-color: #3ca9e2;
    color: #fff;
    font-weight: bold;
    text-transform: uppercase;
    cursor: pointer;
    -webkit-transition: all 0.2s ease;
    transition: all 0.2s ease;
    font-size: 18px;
    position: relative;
    display: inline-block;
    cursor: pointer;
    text-align: center;
    display: block;
    box-sizing: border-box;
    width: 100px;
    outline: none;
    height: 50px;
    line-height: 20px;
    border-radius: 5px;
}
		h2{
			font-size: 35px;
            
			color: black;
			padding: 10px;
			text-align: left;
		}

		
        input {
    
  }
		
		input{
			height: 30px;
			border-radius: 10px;
			border: none;
			
		}
		
		input:focus{
			outline: none;
			border: 1px solid forestgreen;
		}
		input:hover{
			box-shadow: 5px 5px 5px black;
		}
		
		.button{
			background-color: forestgreen;
			color:#fff;
			border: none;
			padding: 2px
		}
		
		.button:hover {
			cursor: pointer;
			box-shadow: 5px 5px 5px black;
		}
	</style>
</head>
<body>
	<h1 align="center"><b>Enter Patient ID to Generate Certificate</b></h1>
	<form name="form"  >
		<div id="personal-details">
		
		
			<table width="100%">
               <br>
               <br>
               <tr>
                <td>Patient ID</td>
                <td>
                    <input type="text"  size="40" name="pid" required>
                </td>
                
            </tr>
               
				
                </table>
                <br>
                <br>
                
                    <table width="25%" cellpadding="4" cellspacing="45">
                <tr>
					<td >
						<input type="submit" class="button" value="Print" name="search" >
					</td>
					<td >
						<input type="submit" class="button" value="Main Page" name="delete" onclick="window.location.href='adminpage.html'" >
					</td>
					
					
                    
				</tr>
			</table>
			
			 
			<%

			    try {

			 

			        Class.forName("com.mysql.jdbc.Driver"); 

			        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root",""); 

			        PreparedStatement st = con.prepareStatement("select * from patient where pid=?");
					Integer i=Integer.parseInt(request.getParameter("pid"));
			        st.setInt(1,i); 

			        ResultSet rs = st.executeQuery();

			        ResultSetMetaData rsmd = rs.getMetaData(); 
			        Integer x1=rs.getInt(1);
			        String x2=rs.getString(2);
			        Integer x3=rs.getInt(3);
			        String x4=rs.getString(4);
			        String x5=rs.getString(5);
			        String x6=rs.getString(6);
			        Integer x7=rs.getInt(1);
			        Integer x8=rs.getInt(1);
			        Integer x9=rs.getInt(1);
			        

					Integer w=rs.getInt(9);
			        PreparedStatement vv = con.prepareStatement("select * from vaccine1 where vid=?");
					
			        vv.setInt(1,w); 
			        ResultSet v = vv.executeQuery();

			        if (rs.next()) 
			        {
			        	
			            out.print("<h4><table id=doctor width=35% border=2 align=center>");

			            out.print("<tr>");
			            out.print("<th colspan="+2+">" + "Patient Details" + "</th>");
			            out.print("</tr>");
			            out.print("<tr>");

			            out.print("<td>" + "Patient ID" + "</td>");

			            out.print("<td>" + x1 + "</td></tr>");

			            out.print("<tr><td>" +"Patient Name"  + "</td>");

			            out.print("<td>" + x2 + "</td></tr>");

			            out.print("<tr><td>" + "Patient Address" + "</td>");

			            out.print("<td>" + x4 + "</td></tr>");

			            out.print("<tr><td>" + "Patient Disease Name" + "</td>");

			            out.print("<td>" + x5 + "</td></tr>");

			            out.print("<tr><td>" + "Patient Email ID" + "</td>");

			            out.print("<td>" + x6 + "</td></tr>");

			            out.print("<tr><td>" + "Patient Phone Number" + "</td>");

			            out.print("<td>" + x3 + "</td></tr>");

			            

			            out.println("</table>"); 


					}
			  		  }

			    
			catch (Exception ex) {

			        System.out.println(ex);

			    }

			%>
			
			
			
			
			
		
			
		</div>
        </form>
        

        </body>
        </html>