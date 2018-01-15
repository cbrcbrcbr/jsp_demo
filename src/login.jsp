<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员登录窗口</title>
</head>
<script type="text/javascript">
function check(){
 var uname=document.getElementById("uname").value;
 var upass=document.getElementById("upass").value;
 if(uname==""||upass=="")
 {
   document.getElementById("ts1").innerHTML="请填写完整,再登录！";
   return false;
 }else{
 	document.getElementById("form1").submit();
	return true;
 }
}
</script>
<body bgcolor="#184caa">
<center>
<form id="form1" name="form1" method="post" action="user!getLogin.action">
<br/><br/><br/><br/><br/>
<table width="200" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><img src="images/topdl.jpg" width="572" height="60" /></td>
  </tr>
  <tr>
    <td width="201"><img src="images/leftdl.jpg" width="200" height="200" /></td>
    <td width="367" align="center"><table width="372" height="200" border="0" background="images/tt.jpg">
      <tr>
        <td colspan="2" height="35"><label id="ts1" style="color:red">${message }</label></td>
        </tr>
      <tr>
        <td width="96" align="center">&nbsp;&nbsp;用户名：</td>
        <td width="266" align="left"><input type="text" name="uname" id="uname" />
        </td>
      </tr>
      <tr>
        <td align="center">&nbsp;&nbsp;密&nbsp;&nbsp;码：</td>
        <td align="left"><input type="password" name="upass" id="upass" />
        </td>
      </tr>
      <tr>
        <td colspan="2"><input type="button" name="button" id="button" onclick="check()" value="登录系统" />
          &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="button2" id="button2" value="清空" />
          &nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td colspan="3"><img src="images/enddl.jpg" width="572" height="39" /></td>
  </tr>
</table>
</form>
</center>
</body>
</html>
