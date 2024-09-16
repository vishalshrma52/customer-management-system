<%@ include file="conn.jsp" %>
<%@ include file="navbar.jsp" %>
<%
String cid=request.getParameter("cid");
String query1="select * from customerinfo where cid=?";
PreparedStatement ps1=cn.prepareStatement(query1);
ps1.setString(1, cid);
ResultSet rs=ps1.executeQuery();
if(rs.next())
{
	%>
	<div class='dv'>
  <label class='lam' style="color: red">Customer record with id <%=cid %> already exist</label>
</div>
	<% 
	return;
}
String fname=request.getParameter("firstname");
String lname=request.getParameter("lastname");
String address=request.getParameter("address");
String ph=request.getParameter("phone");
String eml=request.getParameter("email");
String sql="insert into customerinfo values(?,?,?,?,?,?)";
PreparedStatement ps=cn.prepareStatement(sql);
ps.setString(1,cid);
ps.setString(2,fname);
ps.setString(3,lname);
ps.setString(4,address);
ps.setString(5,ph);
ps.setString(6,eml);
ps.executeUpdate();
%>
<div class='dv'>
  <label class='lam'>Customer record has been saved successfully</label>
</div>