<%@ page contentType="text/html; charset=gb2312" %>
<%@ page import="java.util.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<jsp:useBean id="vote" scope="request" class="cap.vote.vote"/>
<%
String vote1=request.getParameter("lang");
vote.n=4;
vote.filePath="vote.txt";
vote.createFile();
vote.readFile();
int total=0;
float voteFlo[]=new float[5];
for(int i=0;i<4;i++) total+=vote.voteNum[i];
for(int i=0;i<4;i++) voteFlo[i]=150*((float)vote.voteNum[i]/(float)total);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>查看调查</title>
<link href="t1.css" rel="stylesheet" type="text/css">
</head>
<body>
<table width="30%" border="0" class="t1">
 <tr> 
 <td colspan="2"><div align="center">调查结果</div></td>
 </tr>
 <tr> 
 <td width="18%">罗宁</td>
 <td width="82%"><img src="bar.gif" width=<%=voteFlo[0]%> height=8> <%=vote.voteNum[0]%></td>
 </tr>
 <tr> 
 <td>罗宁</td>
 <td><img src="bar.gif" width=<%=voteFlo[1]%> height=8> <%=vote.voteNum[1]%></td>
 </tr>
 <tr> 
 <td>LUONING</td>
 <td><img src="bar.gif" width=<%=voteFlo[2]%> height=8> <%=vote.voteNum[2]%></td>
 </tr>
 <tr> 
 <td>其他罗宁</td>
 <td><img src="bar.gif" width=<%=voteFlo[3]%> height=8> <%=vote.voteNum[3]%></td>
 </tr>
 <tr> 
 <td colspan="2"><div align="center"><a href="javascript:window.close();">关闭窗口</a></div></td>
 </tr>
</table>
</body>
</html>