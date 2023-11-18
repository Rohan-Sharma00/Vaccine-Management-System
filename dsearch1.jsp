<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<html>
<head>
	<title>Search doctor details</title>
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
	<h1 align="center"><b>Enter Doctor ID to Search Data</b></h1>
	<form name="form"  >
		<div id="personal-details">
		
		
			<table width="100%">
               <br>
               <br>
               <tr>
                <td>Doctor ID</td>
                <td>
                    <input type="text"  size="40" name="did" required>
                </td>
                
            </tr>
               
				
                </table>
                <br>
                <br>
                
                    <table width="25%" cellpadding="4" cellspacing="45">
                <tr>
					<td >
						<input type="submit" class="button" value="Search" name="search" >
					</td>
					<td >
						<input type="submit" class="button" value="Main Page" name="delete" onclick="location.href='maind.html'" >
					</td>
					
					
                    
				</tr>
			</table>
			
			 
			<%

			    try {

			 

			        Class.forName("com.mysql.jdbc.Driver"); 

			        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root",""); 

			        PreparedStatement st = con.prepareStatement("select * from doctor where did=?");
					Integer i=Integer.parseInt(request.getParameter("did"));
			        st.setInt(1,i); 

			        ResultSet rs = st.executeQuery();

			        ResultSetMetaData rsmd = rs.getMetaData(); 

			        if (rs.next()) 
			        {
			        	
			        	
			        	out.print("<center><h2>Doctor Details</h2></center>");

			            out.print("<h4><table id=doctor width=35% border=2 align=center>");

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
			
			
			
			
			
		
			
		</div>
        </form>
        <p id="demo"></p>
        <script src=jquery.js>
function f() {
	alert("success");
  var printme=document.getElementById('doctor');
  var wme=window.open("","","width:700,height:900");
  wme.document.write(printme.outerHTML);
  wme.document.close();
  wme.focuse();
  wme.print();
  wme.close();
				}
</script>
		

        </body>
        </html>