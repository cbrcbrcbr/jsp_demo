<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>  
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head><title>添加客户 信息</title><sx:head />
  </head>
  <body>
    <div>
		<TABLE width="796" height="20" bgcolor="#ECF1FF">
			<TR>
				<TD>当前位置：添加客户信息</TD>
				<TD width="20"></TD>
			</TR>
		</TABLE>
		<br>
		<br>
		<form id="form1" action="ke!addKeHu.action" method="post" >
		<table border="0" cellpadding="0" cellspacing="0"
			style="border-collapse: collapse" bordercolor="D0E7FF" width="796"
			height="2">
			<tr>
				<td colspan="2" align="center"><font size="6" face="黑体" >添加客户信息</font></td>
			</tr>
			<tr>
				<td colspan="2" align="center" height="40"><label id="ts1" style="color:red">
				<sx:div id="divShow2" delay="0" updateFreq="0" >
	
	</sx:div>
				</label></td>
			</tr>
			<tr>
				<td align="right" height="40">姓&nbsp;&nbsp;名：</td>
				<td align="left"><input type="text" id="kname" name="kname" size="16" maxLength="20"></td>
			</tr>
			<tr>
				<td align="right" height="40">性&nbsp;&nbsp;别：</td>
				<td align="left">
				<select id="ksex" name="ksex">
          		<option value="男" selected>男</option>
         		<option value="女">女</option>
        		</select>
				</td>
			</tr>
			<tr>
				<td align="right" height="40">年&nbsp;&nbsp;龄：</td>
				<td align="left"><input type="text" id="kage" name="kage" size="16" maxLength="16"></td>
			</tr>
			<tr>
				<td align="right" height="40">电&nbsp;&nbsp;话：</td>
				<td align="left"><input type="text" id="kphone" name="kphone" size="16" maxLength="11"></td>
			</tr>
			<tr>
				<td align="right" height="40">单&nbsp;&nbsp;位：</td>
				<td align="left"><input type="text" id="kjob" name="kjob" size="26" maxLength="20"></td>
			</tr>
			<tr>
			  <td align="right" height="40">职&nbsp;&nbsp;位：</td>
			  <td align="left"><input type="text" name="kzhiwei" id="kzhiwei" size="26" maxLength="20"></td>
		  </tr>
			<tr>
			  <td align="right" height="40">级&nbsp;&nbsp;别：</td>
			  <td align="left">
			  <select name="kjibie" id="kjibie">
        	<option value="大客户">大客户</option>
       		 <option value="小客户">小客户</option>
   		 </select>
		      </td>
		  </tr>
			<tr>
				<td align="right">
				</td>
				<td align="left" height="40">
				<sx:submit name="btnselect" id="btnselect" value="  添加  " targets="divShow2"/>&nbsp;&nbsp;
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
