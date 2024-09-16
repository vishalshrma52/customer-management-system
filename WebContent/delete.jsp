<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('delete')">
   <form action='confirm-delete.jsp'>
    <table class='ta'>
     <tr>
      <td class='tpa'>Enter Customer id<span> *</span></td>
      <td class='tpa'><input type="text" name='cid' class='tb' required></td>
      <td class='tpa'><button class='btr' style='background-color:red'>Delete Record</button></td>
     </tr>
    </table>
   </form>
 </body>
</html>