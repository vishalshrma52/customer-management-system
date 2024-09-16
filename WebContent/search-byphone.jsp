<%@ include file="navbar-search.jsp" %>
<html>
 <body onload="makeActive('byphone')">
  <form action="show-record-byphone.jsp">
   <table class='ta'>
    <tr>
     <td class='tpa' style='background-color:cyan'>Enter Customer Phone Number<span> *</span></td>
     <td class='tpa'>
     	<input type="text" name="phone" class='tb' required>
     </td>
     <td class='tpa'>
     	<button class='btr'>Search Record</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>