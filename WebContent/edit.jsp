<%@ include file="navbar.jsp" %>
<html>
<body onload="makeActive('edit')">
   <form action='get-record.jsp'>
    <table class='ta'>
     <tr>
      <td class='tpa'>Enter Customer id<span> *</span></td>
      <td class='tpa'><input type="text" name='cid' class='tb' required></td>
      <td class='tpa'><button class='btr'>Get Record</button></td>
     </tr>
    </table>
   </form>
 </body>
</html>