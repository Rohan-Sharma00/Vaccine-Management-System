<%@page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<html>
<head>
	<title>doctor details</title>
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
	<h1 align="center"><b>Doctor Details</b></h1>
	<form name="form" method="post" action="ddelete.jsp" >
		<div id="personal-details">
		
		<h2>Enter Doctor ID to Delete Data</h2>
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
						<input type="submit" class="button" value="Delete" name="insert" onclick=f()>
					</td>
					<td >
						<input type="submit" class="button" value="Main Page" name="delete" onclick="window.location.href='maindoctor.html'" >
					</td>
					
                    
				</tr>
			</table>
			
		</div>
        </form>
        <p id="demo"></p>
        <script>
function f() {
  document.getElementById("demo").innerHTML = "Record Deleted Successfully";
}
</script>

<%

Integer a=Integer.parseInt(request.getParameter("1"));


try{

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/vaccine","root","");
String x="delete from doctor where did="+a;
out.println(x);
Statement st=con.createStatement();

 st.execute(x);
 
con.close();
String s="ddelete.html";
response.sendRedirect(s);
}

catch (Exception ee)

{
out.println("error  "+ee);
}

%>

		

        </body>
        </html>