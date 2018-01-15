<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>  
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><title> 修改管理员密码</title><sx:head />
  </head>
  <body>
    <div>
		<TABLE width="796" height="20" bgcolor="#ECF1FF">
			<TR>
				<TD>当前位置：修改管理员密码</TD>
				<TD width="20"></TD>
			</TR>
		</TABLE>
		<br>
		<br>
		<form id="form1" action="user!xiugai.action" method="post" >
		<table border="0" cellpadding="0" cellspacing="0"
			style="border-collapse: collapse" bordercolor="D0E7FF" width="796"
			height="2">
			<tr>
				<td colspan="2" align="center"><font size="6" face="黑体" >修改管理员密码</font></td>
			</tr>
			<tr>
				<td colspan="2" align="center" height="40"><label id="ts1" style="color:red">
				<sx:div id="divShow5" delay="0" updateFreq="0" >
	
	</sx:div>
				</label></td>
			</tr>
			<tr>
				<td align="right" height="40">原密码：</td>
				<td align="left"><input type="password" id="upass" name="upass" size="16" maxLength="20" ></td>
			</tr>
			<tr>
				<td align="right" height="40">新密码：</td>
				<td align="left"><input type="password" id="upass1" name="upass1" size="16" maxLength="16" ></td>
			</tr>
			<tr>
				<td align="right">
				</td>
				<td align="left" height="40">
				<sx:submit name="btnselect" id="btnselect" value="  修改  " targets="divShow5"/>&nbsp;&nbsp;
				<input type="reset" name="reset" value="清空">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" align="center">&nbsp;</td>
			</tr>
		</table>
		</form>
</div>

  </body>
</html>
