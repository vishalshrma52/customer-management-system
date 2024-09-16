<%@ include file="conn.jsp" %>
<%@ include file="navbar.jsp" %>
<%
Statement st=cn.createStatement();
ResultSet rst=st.executeQuery("select * from customerinfo");
%>
<body onload="makeActive('list')">
 <div class='container my-2'>
  <div class='card'>
    <div class='card-body'>
     <table class='table table-hover'>
      <thead>
       <tr>
        <th class='thf'>Customer Id</th><th class='thf'>First Name</th><th class='thf'>Last Name</th>
        <th class='thf'>Address</th><th class='thf'>Phone number</th><th class='thf'>Email Id</th>
        <th  class='thf' style='color:magenta'>Action</th>
       </tr>
      </thead>
      <tbody>
      <%
      while(rst.next())
      {
    	  %>
    	  <tr>
    	   <td class='tdf'><%=rst.getString(1)%></td>
    	   <td class='tdf'><%=rst.getString(2)%></td>
    	   <td class='tdf'><%=rst.getString(3)%></td>
    	   <td class='tdf'><%=rst.getString(4)%></td>
    	   <td class='tdf'><%=rst.getString(5)%></td>
    	   <td class='tdf'><%=rst.getString(6)%></td>
    	   <td>
    	    <a href='edit-customer-record.jsp?cid=<%=rst.getString(1)%>' class='la'>Edit |</a>
    	    <a href='delete-customer-record.jsp?cid=<%=rst.getString(1)%>' onclick="return confirm('Are you sure you want to delete?')" class='la'>Delete</a>
    	   </td>
    	  </tr>
    	  <%
      }
      %>
      </tbody>
     </table>
    </div>
  </div>
 </div>
</body>