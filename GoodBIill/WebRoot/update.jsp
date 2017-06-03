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
  </head>
  
  <body>
   <form action="updateGood" method="post">
   <input type="hidden" name="g.creationtime" value="<s:date name="g.creationtime" format="yyyy-MM-dd HH:mm:ss"/>">
   <input type="hidden" name="g.goodsdistrict" value="<s:property value='g.goodsdistrict'/>">
  		<table align="center" width="500" height=""  cellpadding="0" cellspacing="0" border="1">
  			<tr height="30" align="center">
  				<td>商品编号</td>
  				<td><input type="text" name="g.id" value="<s:property value='g.id'/>" readonly="readonly"></td>
  			</tr>
  			<tr height="30" align="center">
  				<td>商品名称</td>
  				<td><input type="text"  value="<s:property value='g.goodsname'/>" name="g.goodsname"></td>
  			</tr>
  			<tr height="30" align="center">
  				<td>商品价格</td>
  				<td><input type="text"  value="<s:property value='g.goodsprice'/>"name="g.goodsprice"></td>
  			</tr>
  			<tr height="30" align="center">
  				<td>商品数量</td>
  				<td><input type="text"  name="g.goodscount" value="<s:property value='g.goodscount'/>"></td>
  			</tr>
  			<tr height="30" align="center">
  				<td>订单状态</td>
  				<td>
					<select name="g.billstatus">
						<option value="0" <s:if test="g.billstatus==0"> selected="selected"</s:if>>待处理</option>
						<option value="1" <s:if test="g.billstatus==1"> selected="selected"</s:if>>处理中</option>
						<option value="2" <s:if test="g.billstatus==2"> selected="selected"</s:if>>已处理</option>
						
					</select>
				</td>

  			</tr>
  			<tr height="30px" align="center">
  				<td colspan="2"><s:if test="g.billstatus!=2"><input type="submit" value="提交"></s:if>
  					<input type="button" value="返回">
  				</td>
  			</tr>
  		</table>
  	</form>
  </body>
</html>
