<%@ include file="conn.jsp" %>
<jsp:include page="search-bycity.jsp" />
<html>
 <body onload="makeActive1('bycity')">
  <%
  String city=request.getParameter("city");
  String sql="select * from customerinfo where address=?";
  PreparedStatement ps=cn.prepareStatement(sql);
  ps.setString(1,city);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <table class='ta' border='1' style='width:90%' cellpadding='5vw'>
	   <tr style='background-color:orange;color:white'>
	    <td colspan="6" align="center" class='la'>Customer records by city</td>
	   </tr>
	   <tr>
	    <th>Customer id</th><th>First name</th><th>Last name</th>
	    <th>Address</th><th>Phone number</th><th>Email id</th>
	   </tr>
	   <%
	   do
	   {
		   %>
		   <tr>
		    <td><%=rst.getString(1)%></td>
		    <td><%=rst.getString(2)%></td>
		    <td><%=rst.getString(3)%></td>
		    <td><%=rst.getString(4)%></td>
		    <td><%=rst.getString(5)%></td>
		    <td><%=rst.getString(6)%></td>
		   </tr>
		   <%
	   }while(rst.next());
	   %>
	  </table>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="search-bycity.jsp" />
	  <div class='dv'>
	   <label class='lam' style='color:red'>Customer with city <%=city%> not found</label>
	  </div>
	  <%
  }
  %>
 </body>
</html>    