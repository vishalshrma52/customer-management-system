<%@ include file="conn.jsp" %>
<%@ include file="navbar.jsp" %>
<%
String query="delete from customerinfo where cid=?";
PreparedStatement ps=cn.prepareStatement(query);
String id=request.getParameter("cid");
ps.setString(1,id);
ps.executeUpdate();
response.sendRedirect("customer-list.jsp");
%>
<div class='dv'>
  <label class='lam'>Customer record has been Deleted successfully</label>
</div>