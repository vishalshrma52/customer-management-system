<%@ include file="conn.jsp" %>
<jsp:include page="search-byid.jsp" />
<html>
 <body onload="makeActive1('byid')">
  <%
  String cid=request.getParameter("cid");
  String sql="select * from customerinfo where cid=?";
  PreparedStatement ps=cn.prepareStatement(sql);
  ps.setString(1,cid);
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <table class='ta' border='1' cellpadding='5vw'>
	   <tr style='background-color:orange;color:white'>
	    <td colspan="2" align="center" class='la'>Customer Details</td>
	   </tr>
	   <tr>
	    <th align="left">Customer Id</th>
	    <td><%=rst.getString(1)%></td>
	   </tr>
	   <tr>
	    <th align="left">First name</th>
	    <td><%=rst.getString(2)%></td>
	   </tr>
	   <tr>
	    <th align="left">Last name</th>
	    <td><%=rst.getString(3)%></td>
	   </tr>
	   <tr>
	    <th align="left">Address</th>
	    <td><%=rst.getString(4)%></td>
	   </tr>
	   <tr>
	    <th align="left">Phone number</th>
	    <td><%=rst.getString(5)%></td>
	   </tr>
	   <tr>
	    <th align="left">Email id</th>
	    <td><%=rst.getString(6)%></td>
	   </tr>
	  </table>
	  <%
  }
  else
  {
	  %>
	  <jsp:include page="search-byid.jsp" />
	  <div class='dv'>
	   <label class='lam' style='color:red'>Customer with id <%=cid%> not found</label>
	  </div>
	  <%
  }
  %>
 </body>
</html>    