<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="India1" class="w3-container w3-border city" style="display: none">
	
	<br>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->
<style>
@import "//netdna.bootstrapcdn.com/font-awesome/3.0/css/font-awesome.css";
  .wrapper{
    width: 100%;
  }
  .top{
    width: 100%;
    height: 10vh;
  }
  .left{
    float: left;
    margin-left: 5%;
  }
  .right{
    float: right;
  	position: relative;
  	left: 17vh;
  	bottom: 5vh;
  }
  .bottom{
    width: 100%;
    height: 60vh;
  }
  select{
    width: 160px;
    height: 5vh;
    font-size: large;
    font-family: cursive;
    background-color: aliceblue;
    border-radius: 5px;
    border: 2px solid teal;
  }
  .new{
  float: left;
  margin-left: 16%
  }
  .date{
  	border-radius: 5px;
  	height: 5vh;
  	width: 160px; 
  	background-color: aliceblue;
	border: 2px solid teal;
  }
  .month{
  	margin-left: 6%
  }
  .clr{
  clear: both
  }
#searchess::-webkit-input-placeholder { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}

#searchess::-moz-placeholder  { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}

#searchess:-ms-input-placeholder  { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}
#seach::-webkit-input-placeholder { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}

#seach::-moz-placeholder  { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}

#seach:-ms-input-placeholder  { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}
#search::-webkit-input-placeholder { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}

#search::-moz-placeholder  { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}

#search:-ms-input-placeholder  { 
font-family: FontAwesome;
font-weight: normal;
overflow: visible;
vertical-align: top;
display: inline-block !important;
padding-left: 5px;
padding-top: 2px;
color: hsl(9, 40%, 60%);
}
.pname{
position: relative;
left: 15vh
}
</style>
<div class="rightnav v-class clr">
			<input type="text" name="search" id="searchess" placeholder="&#xF002; search here">
		</div>
<button class="w3-bar-item w3-button tablinks divis w3-red" onclick="openstate(event,'datewise')"><i>Date wise Attendance</i></button><br>
<button class="w3-bar-item w3-button tablinks divis" onclick="openstate(event,'monthwise')"><i>Monthly Attendance</i></button>
	<main class="my-form cities" id="datewise">
		<div class="cotainer" style="font-family:'Aclonica'; ">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="backcard">
						<center><div class="card-header divi"><b><i>Date Wise Attendance</i></b></div></center>
						<div class="table-back">
							<div class="wrapper">
<form name="my-form" onsubmit="return validform()" action="viewpasssection.jsp" method="post">
<input type="hidden" name="datre" value="datewise">
        <div class="top">
            <div class="left">
            <%@page import = "java.sql.*" %>
      								<%@page import = "Dao.JSconnector" %>
                                    <%try
	  								{
		  							Connection co = JSconnector.getConnection();
                                    PreparedStatement ps1 = co.prepareStatement("select * from teacher where id=?");
									ps1.setString(1, String.valueOf(session.getAttribute("idteacher")));
									ResultSet rs1 = ps1.executeQuery();%>                  
                     				 <select name="secton">
                     				 <option disabled selected>Section</option>
                     				 <%
                     				 while(rs1.next()){ %>
                     				 <option value="<%= rs1.getString("section")%>"><%= rs1.getString("section")%></option>
                     				 <% if(!rs1.getString("section2").equals("NULL")){%>
                     				 	<option value="<%= rs1.getString("section2")%>"><%= rs1.getString("section2")%></option>
                     				 <%}
                     					 
                     				 }%>
                     				 <%}catch(Exception e)
                     				{} %>
        							</select>
            </div>
            <div class="new">
            	<input class="date" type="date" name="dat">
            </div>
            <div class="col-md-6 right">
                                        <button type="submit" class="btn btn-primary btns div">
                                        <i><b>Search</b></i>
                                        </button>
                                    </div>
        </div>
        </form>
        <form name="my-form">
        <div class="bottom">   
<div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="division"><i><b>Name</b></i></th>
          <th class="division"><i><b>Roll Number</b></i></th>
          <th class="division"><i><b>Date</b></i></th>
          <th class="division"><i><b>Attendance</b></i></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" id="student">
      <tbody>
                <%@page import = "java.sql.*" %>
      			<%@page import = "Dao.JSconnector" %>
                <%try
	  {
		  Connection con = JSconnector.getConnection();
		  PreparedStatement ps1 = con.prepareStatement("select * from attendance where section=? and semester=? and date=?");
		  	ps1.setString(1, String.valueOf(request.getAttribute("sectonteacher")));
			ps1.setString(2, (String)session.getAttribute("semester"));
			ps1.setString(3, String.valueOf(request.getAttribute("dates")));
			ResultSet rs = ps1.executeQuery();%> 
                <%while(rs.next()){ %>
                <tr>
                    <td class="division"><i><b><%=rs.getString(2) %></b></i>
                    </td>
                    <td class="division"><i><b><%=rs.getString(1) %></b></i>
                    </td>
                   <td class="division"><i><b><%=rs.getString(3) %></b></i>
                    </td>
                    <td class="division"><i><b><%=rs.getString(7) %></b></i>
                    </td>
                </tr>
                </tbody>
      <%}}
	  catch(Exception e)
	  {}
	  %>
    </table>
  </div>
        </div>
        </form>
        </div>
    
					</div>
				</div>
			</div>
		</div>
		<br>
</div>

</main>

<main class="my-form cities" id="monthwise" style="display: none">
		<div class="cotainer" style="font-family:'Aclonica'; ">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="backcard">
						<center><div class="card-header divi"><b><i>Monthly Attendance</i></b></div></center>
						<div class="table-back">
							<div class="wrapper">
<form name="my-form" onsubmit="return validform()" action="viewpasssection.jsp" method="post">
<input type="hidden" name="datre" value = "monthly">
        <div class="top">
            <div class="left">
            <%@page import = "java.sql.*" %>
      								<%@page import = "Dao.JSconnector" %>
                                    <%try
	  								{
		  							Connection co = JSconnector.getConnection();
                                    PreparedStatement ps1 = co.prepareStatement("select * from teacher where id=?");
									ps1.setString(1, String.valueOf(session.getAttribute("idteacher")));
									ResultSet rs1 = ps1.executeQuery();%>                  
                     				 <select name="secton">
                     				 <option disabled selected>Section</option>
                     				 <%
                     				 while(rs1.next()){ %>
                     				 <option value="<%= rs1.getString("section")%>"><%= rs1.getString("section")%></option>
                     				 <% if(!rs1.getString("section2").equals("NULL")){%>
                     				 	<option value="<%= rs1.getString("section2")%>"><%= rs1.getString("section2")%></option>
                     				 <%}
                     					 
                     				 }%>
                     				 <%}catch(Exception e)
                     				{} %>
        							</select>
            </div>
            <div class="new">
                                    <div class="col-md-6">
                                        <select  class="date" name="month">
                                        <option value="January">January</option>
  										<option value="February">February</option>
  										<option value="March">March</option>
  										<option value="April">April</option>
  										<option value="May">May</option>
  										<option value="June">June</option>
  										<option value="July">July</option>
  										<option value="August">August</option>
  										<option value="September">September</option>
  										<option value="October">October</option>
  										<option value="November">November</option>
  										<option value="December">December</option>
  										</select>
                                    </div>
            </div>
            <div class="col-md-6 right">
                                        <button type="submit" class="btn btn-primary btns div">
                                        <i><b>Search</b></i>
                                        </button>
                                    </div>
        </div>
        </form>
        <form name="my-form">
        <div class="bottom">   
<div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="division"><i><b>Name</b></i></th>
          <th class="division"><i><b>Roll Number</b></i></th>
          <th class="division"><i><b>Date</b></i></th>
          <th class="division"><i><b>Attendance</b></i></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" id="student">
      <tbody>
                <%@page import = "java.sql.*" %>
      			<%@page import = "Dao.JSconnector" %>
                <%try
	  {
		  Connection con = JSconnector.getConnection();
		  PreparedStatement ps1 = con.prepareStatement("select * from attendance where section=? and semester=? and month=?");
			String month=String.valueOf(request.getAttribute("monthss"));
		  	ps1.setString(1, String.valueOf(request.getAttribute("sectonteacher")));
			ps1.setString(2, (String)session.getAttribute("semester"));
			ps1.setString(3, month);
			ResultSet rs = ps1.executeQuery();%> 
                <%while(rs.next()){ %>
                <tr>
                    <td class="division"><i><b><%=rs.getString(2) %></b></i>
                    </td>
                    <td class="division"><i><b><%=rs.getString(1) %></b></i>
                    </td>
                   <td class="division"><i><b><%=rs.getString(3) %></b></i>
                    </td>
                    <td class="division"><i><b><%=rs.getString(7) %></b></i>
                    </td>
                </tr>
                </tbody>
      <%}}
	  catch(Exception e)
	  {}
	  %>
    </table>
  </div>
        </div>
        </form>
        </div>
    
					</div>
				</div>
			</div>
		</div>
		<br>
</div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
</div>
</body>
</html>