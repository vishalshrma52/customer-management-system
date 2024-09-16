<%@ include file="conn.jsp" %>
<%
String query="select * from customerinfo where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
String cid=request.getParameter("cid");
ps.setString(1,cid);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
	%>
	<%@ include file="navbar.jsp" %>
	<body onload="makeActive('edit')">
	<form action='update-customer-record.jsp' method='post'>
	<table class='tar' border='1' cellpadding='3vw'>
	 <tr style='background-color:orange'>
	  <td colspan="2" align="center">
	   <label class='lah'>Edit Customer Details</label>
	  </td>
	 </tr>
	 <tr>
	  <th align="left">Customer Id</th>
	  <td><%=rst.getString(1)%><input type="hidden" value='<%=rst.getString(1)%>' name='cid'>
	  </td>
	 </tr>
	 <tr>
	  <th align="left">Edit Customer First Name</th>
	  <td><input type='text' value='<%=rst.getString(2)%>' name='fname' class='tb'></td>
	 </tr>
	 <tr>
	  <th align="left">Edit Customer Last Name</th>
	  <td><input type='text' value='<%=rst.getString(3)%>' name='lname' class='tb'></td>
	 </tr>
	 <tr>
	  <th align="left">Edit Customer Address</th>
	  <td><input type='text' value='<%=rst.getString(4)%>' name='address' class='tb'></td>
	 </tr>
	 <tr>
	  <th align="left">Edit Customer Phone</th>
	  <td><input type='text' value='<%=rst.getString(5)%>' name='phone' class='tb'></td>
	 </tr>
	 <tr>
	  <th align="left">Edit Customer Email</th>
	  <td><input type='text' value='<%=rst.getString(6)%>' name='email' class='tb'></td>
	 </tr>
	 <tr>
	  <td colspan="2" align="right">
	   <button class='btr'>Update Record</button>
	  </td>
	 </tr>
	</table>
	</form>
	</body>
	<%
	return;
}
%>
<jsp:include page="edit.jsp"/>
<div class='dv20'>
   <label class='lam' style='color:red'>Customer with cid <%=cid%> does not exist</label>
</div>
