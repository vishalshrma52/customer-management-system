<%@ include file="navbar-search.jsp" %>
<html>
 <body onload="makeActive('byid')">
  <form action="show-record-byid.jsp">
  <table class='ta'>
    <tr>
     <td class='tpa' style='background-color:cyan'>Enter Customer id<span> *</span></td>
     <td class='tpa'>
     	<input type="text" name="cid" class='tb' required>
     </td>
     <td class='tpa'>
     	<button class='btr'>Search Record</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>