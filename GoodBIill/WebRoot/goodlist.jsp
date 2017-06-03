<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <form action="getAll" method="post">
    	<table align="center" width="500" height="" cellpadding="0" cellspacing="0" border="1">
    		<tr height="50" align="center">
    			<td>请选择区域：
    			<select name="g.goodsdistrict">
             		<option value="0">--请选技择--</option>
                	<option value="1">朝阳</option>
                	<option value="2">海淀</option>
                	<option value="3">丰台</option>
                	<option value="4">西城</option>
                	<option value="5">昌平</option> 
          		</select>
          		<input type="submit" value="查询" />
    			</td>
    		</tr>
    	</table>
    </form>
  </body>
</html>
