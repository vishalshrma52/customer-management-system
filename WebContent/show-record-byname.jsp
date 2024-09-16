<%@ include file="conn.jsp" %>
 <jsp:include page="search-byname.jsp" />
<html>
 <body onload="makeActive1('byname')">
  <%
  String name=request.getParameter("firstname");
  String sql="select * from customerinfo where firstname=?";
  PreparedStatement ps=cn.prepareStatement(sql);
  ps.setString(1,name);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <table class='ta' border='1' style='width:90%' cellpadding='5vw'>
	   <tr style='background-color:orange;color:white'>
	    <td colspan="6" align="center" class='la'>Customer records by first name</td>
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
	  <jsp:include page="search-byname.jsp" />
	  <div class='dv'>
	   <label class='lam' style='color:red'>Customer with name <%=name%> not found</label>
	  </div>
	  <%
  }
  %>
 </body>
</html>    