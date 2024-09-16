<%@ include file="conn.jsp" %>
<%@ include file="navbar.jsp" %>
<%
String cid=request.getParameter("cid");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String address=request.getParameter("address");
String ph=request.getParameter("phone");
String eml=request.getParameter("email");
String sql="update customerinfo set firstname=?,lastname=?,address=?,phone=?,email=? where cid=?";
PreparedStatement ps=cn.prepareStatement(sql);
ps.setString(6,cid);
ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,address);
ps.setString(4,ph);
ps.setString(5,eml);
ps.executeUpdate();
%>
<div class='dv'>
  <label class='lam'>Customer record has been updated successfully</label>
</div>
