﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--#include file="Pinluo_Main/Config.asp"-->
<%
dim SearchKeyword
SearchKeyword=Trim(request("SearchKeyword"))

ClassID=Trim(Request("ClassID"))
ClassName=""
dim PinLuo
Set PinLuo = New PinLuo_Class
    PinLuo.DBConnBegin
	PinLuo.PinLuo_ViewSiteConfig
	%>
<title><%=PinLuo.Pinluo_SeoIndexTitle%></title>
<meta name="keywords" content="<%=PinLuo.Pinluo_SeoIndexKeyword%>">
<META NAME="description" CONTENT="<%=PinLuo.Pinluo_SeoIndexMS%>">

<!--#include file="inc/head.asp"-->
  <div class="nr">
    <div class="xw">
	  <div class="xw_tou">
	    <div class="xw_tou1"><h3>最新资讯</h3></div>
		<div class="xw_tou2"><span><a href="info/">更多</a></span></div>
	  </div>
	  <div class="xw_lb">
	  <ul>
	    <%HtmlStr="<li><a href=""info/s.asp?{$infoid}.html"">· {$title}</a></li>"
		Pinluo.PinLuo_GetInfolist HtmlStr,18,5,6,"","PinLuo_InfoList","PinLuo_InfoClass","new"%>
	  </ul>
	  </div>
	</div>
	<div class="cp">
	  <div class="cp_tou">
	    <div class="cp_tou1"><h3>产品展示</h3></div>
		<div class="cp_tou2"><span><a href="product/">更多</a></span></div>
	  </div>
	  <div class="cp_lb">
	    <ul>
        <%HtmlStr="<li><a href=""product/s.asp?{$proid}.html""><img src=""{$proimg1}"" border=0 width=108 height=98 /></a><p><a href=""product/s.asp?{$proid}.html"">{$proname}</a></p></li>"
		Pinluo.PinLuo_GetProductlist HtmlStr,10,5,3,"","PinLuo_ProductList","PinLuo_ProductClass","new"%>
		  </ul>
	  </div>
	</div>
	<div class="lx">
	  <div class="lx_tou">
	    <div class="lx_tou1"><h3>联系我们</h3></div>
		<div class="lx_tou2"><span><a href="item/?id=4">更多</a></span></div>
	  </div>
	  <div class="lx_lb">
	  <%=Pinluo.PinLuo_ViewBlockItem(3,0)%>
	  </div>
	</div>
  </div>
  <div class="bq">
    <!--#include file="inc/foot.asp"-->
</div>
</body>
</html>
<%PinLuo.DBConnEnd
Set PinLuo = Nothing%>