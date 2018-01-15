<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <sx:head />
  </head>
  
  <body>
    <TABLE width="796" height="20" bgcolor="#ECF1FF">
			<TR>
				<TD>当前位置：查询客户信息</TD>
				<TD width="20"></TD>
			</TR>
		</TABLE>
		<br>
		<form id="form1" name="form1" method="post" action="ke!getKeHu.action">
		<center>
<table width="750" border="0" bgcolor="#ECF1FF">
  <tr>
    <td width="201">&nbsp;姓名：
    <input name="kname" type="text" id="kname" size="15" /></td>
    <td width="164">性别：
      <select name="ksex" id="ksex">
        <option value="请选择">请选择</option>
        <option value="男">男</option>
        <option value="女">女</option>
    </select></td>
    <td width="192">客户级别：
      <select name="kjibie" id="kjibie">
        <option value="请选择">请选择</option>
        <option value="大客户">大客户</option>
        <option value="小客户">小客户</option>
    </select></td>
    <td width="125"><sx:submit name="btnselect" id="btnselect" value="  查询  " targets="listDiv"/> </td>
  </tr>
</table>
</center>
</form>
<sx:div id="listDiv" delay="0" updateFreq="0" >
	
</sx:div>
  </body>
</html>
