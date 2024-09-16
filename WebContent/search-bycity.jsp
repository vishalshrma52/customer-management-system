<%@ include file="navbar-search.jsp" %>
<html>
 <body onload="makeActive('bycity')">
  <form action="show-record-bycity.jsp">
   <table class='ta'>
    <tr>
     <td class='tpa' style='background-color:cyan'>Enter Customer City<span> *</span></td>
     <td class='tpa'>
     	<input type="text" name="city" class='tb' required>
     </td>
     <td class='tpa'>
     	<button class='btr'>Search Record</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>