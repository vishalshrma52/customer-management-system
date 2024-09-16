<%@ include file="navbar-search.jsp" %>
<html>
 <body onload="makeActive('byname')">
  <form action="show-record-byname.jsp">
   <table class='ta'>
    <tr>
     <td class='tpa' style='background-color:cyan'>Enter Customer First Name<span> *</span></td>
     <td class='tpa'>
     	<input type="text" name="firstname" class='tb' required>
     </td>
     <td class='tpa'>
     	<button class='btr'>Search Record</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>