<%@ page contentType="text/html; charset=gb2312" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ͶƱ</title>
<link href="t1.css" rel="stylesheet" type="text/css">
</head>
<script language="javascript">
function cw()
{
 window.open("see.jsp","mywindow",
  "toolbar=no,left=150,top=200,width=270,height=350,menubar=no,systemMenu=no");
}
</script>
<body>
<table width="15%" height="250" align="left">
 <tr>
 <td><form name="form1" method="post" action="vote.jsp">
  <table width="100%" height="250" border="1" align="center" bordercolor="#9966CC" class="t1">
   <tr>
   <td><div align="left">ͶƱѡ��ϲ���Ĳ���</div></td>
   </tr>
   <tr>
   <td><input type="radio" name="lang" value="0">
    ����</td>
   </tr>
   <tr>
   <td><input type="radio" name="lang" value="1">
    ����</td>
   </tr>
   <tr>
   <td><input type="radio" name="lang" value="2">
    LUONING</td>
   </tr>
   <tr>
   <td><input type="radio" name="lang" value="3">
    �������� </td>
   </tr>
   <tr>
   <td><div align="center">
    <input name="vote" type="image" src="file:///C:/Users/Administrator/git/luoning1/springmvc1433223/src/main/webapp/WEB-INF/images/poll.png" width="40" height="20" border="0">
      <a href="javascript:cw()"><img src="file:///C:/Users/Administrator/git/luoning1/springmvc1433223/src/main/webapp/WEB-INF/images/see.png" width="40" height="20" border="0"></a></div></td>
   </tr>
  </table>
  </form></td>
 </tr>
</table>
</body>
</html>