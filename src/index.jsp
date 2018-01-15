<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<sx:head />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>客户关系管理系统</title>
</head>
<style type="text/css">
a{ text-decoration:none; color:#000000;}
a:hover{ text-decoration:none; color:#FF6600;}
.ulnotab {
	margin-top:0px;
	margin-bottom:0px;
	margin-left: 5px;
}
.ulnotab1 {
	margin-top:5px;
	margin-bottom:5px;
}
</style>
<body>
<%if(session.getAttribute("user")==null){response.sendRedirect("login.jsp");}%>
<center>
<table width="1024" border="0" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td height="136" colspan="2"><img src="images/top.jpg" width="1024" height="130" /></td>
  </tr>
  <tr valign="top">
    <td width="238" height="452">
      <table width="228" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEEEEE" height="500">
      <tr><td></td></tr>
        <tr valign="top" align="center">
          <td>
          <table width="208" border="0" cellpadding="0" cellspacing="0" bgcolor="#D3DFE6">
      <tr>
        <td width="180" height="45" align="left">&nbsp;当前登录：<strong>${user.uname}</strong></td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
      </tr>
      <tr>
        <td align="left">
          <ul class="ulnotab">
            <li><sx:a href="shouye.jsp" targets="divShow1">公司简介</sx:a></li>
          </ul>        
          </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
        <td align="left">
          <ul class="ulnotab">
            <li>客户信息管理</li>
          </ul>        
        <ul class="ulnotab1">
            <li><sx:a href="selectKe.jsp" targets="divShow1">查询客户</sx:a></li>
            <li><sx:a href="addKe.jsp" targets="divShow1">添加客户</sx:a></li>
          </ul>
        </td>
      </tr>
      <tr><td>&nbsp;</td></tr>
      <tr>
        <td align="left">
        <ul class="ulnotab">
            <li>用户管理</li>
          </ul>
        <ul class="ulnotab1">
       	    <li><sx:a href="zhuceUser.jsp" targets="divShow1">用户添加</sx:a></li>
            <li><sx:a href="updatePass.jsp" targets="divShow1">修改密码</sx:a></li>
          </ul>
        </td>
      </tr>
      <tr><td>&nbsp;</td></tr>
      <tr>
        <td align="left">
        <ul class="ulnotab">
            <li><a href="user!tuichu.action">退出</a></li>
          </ul>
        </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
    </table>
          </td>
        </tr>
    </table></td>
    <td width="786" align="left">
    <sx:div id="divShow1" delay="0" updateFreq="0" >
	
	</sx:div>
    </td>
  </tr>
  <tr>
    <td height="16" colspan="2"><hr/></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><font size="2px"><strong>Copyright @2013 客户关系管理系统</strong></font></td>
  </tr>
</table>
</center>
</body>
</html>
