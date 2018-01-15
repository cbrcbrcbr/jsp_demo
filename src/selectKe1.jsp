<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 <sx:head />
</head>
  
  <body>
  <center>
 
    <table border="1" cellpadding="0" cellspacing="0"
			style="border-collapse: collapse" bordercolor="D0E7FF" width="750">
			<tr bgcolor="D0E7FF">
			<td width="10%"> 姓名</td>
			<td width="8%">性别</td>
			<td width="8%">年龄</td>
			<td width="14%">联系电话</td>
			<td width="21%">工作单位</td>
			<td width="13%">职位</td>
			<td width="11%"> 客户级别</td>
			<td width="15%">操作</td>
			</tr>
            <s:iterator id="keList1" value="#request.keList" status="rowstatus">
            <tr>
            <td>${keList1.kname }</td>
			<td>${keList1.ksex }</td>
			<td>${keList1.kage }</td>
			<td>${keList1.kphone }</td>
			<td>${keList1.kjob }</td>
			<td>${keList1.kzhiwei }</td>
			<td>${keList1.kjibie }</td>
			<td><sx:a href="ke!updateKeHu.action?kid=%{#keList1.kid }" targets="divShow1">修改</sx:a>&nbsp;&nbsp;<sx:a href="ke!deleteKeHu.action?kid=%{#keList1.kid }" targets="listDiv">删除</sx:a></td>
			</tr>
            </s:iterator>
            <tr>
            <td  colspan="8" align="right">
        		   <br/>
        		    <form id="form1" action="" method="post" >
        		     共${pages }条记录&nbsp;&nbsp;第 ${curPage } 页 / 共 ${pageCount } 页
        		    <input name="kname" type="hidden" id="kname" size="15" value="${kname1 }"/>
        		    <input name="ksex" type="hidden" id="ksex" size="15" value="${ksex1 }"/>
        		    <input name="kjibie" type="hidden" id="kjibie" size="15" value="${kjibie1 }"/>
        		<sx:a href="ke!getKeHu.action?curPage=%{#request.curPage-1 }" targets="listDiv">上一页</sx:a>&nbsp;|
				<sx:a href="ke!getKeHu.action?curPage=%{#request.curPage+1 }" targets="listDiv">下一页</sx:a>
					</form>
            </td>
            </tr>
			</table>
			</center>
  </body>
</html>
