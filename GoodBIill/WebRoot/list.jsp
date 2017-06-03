<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<SCRIPT type="text/javascript">
	  function up(id){
            location.href="getById?g.id="+id;
		
	  }
	  </script>
  </head>
  
  <body>
  	<form action="getAll" method="post">
  		<table align="center" width="900" height=""  cellpadding="0" cellspacing="0" border="1">
  			<tr height="40" align="center">
  				<td>商品编号</td>
  				<td>商品名称</td>
  				<td>商品价格</td>
  				<td>库存数量</td>
  				<td>订单状态</td>
  				<td>操作</td>
  			</tr>
  			<s:iterator value="list" var="goods" status="status">
  			<tr height="40" align="center">
  				<td><s:property value="id"/></td>
  				<td><s:property value="goodsname"/></td>
  				<td><s:property value="goodsprice"/></td>
  				<td><s:property value="goodscount"/></td>
  				<td>
  					<s:if test="billstatus==0">待处理</s:if>
  					<s:if test="billstatus==1">处理中</s:if>
  					<s:if test="billstatus==2">已处理</s:if>
  				</td>
  				<td>
  				<a  href="javascript:onclick=up('<s:property value="id"/>')">修改</a>
  				</td>
  			</tr>
  			</s:iterator>
  		</table>
  	</form>
  </body>
</html>
