<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
<link rel="stylesheet" type="text/css" href="template/default/content/css/style.css">
<script language="javascript" type="text/javascript" src="DatePicker/WdatePicker.js"></script>
<script charset="utf-8" src="eweb/kindeditor.js"></script>
<title>OA办公系统</title>
</head>
<body class="bodycolor">
<table width="80%" border="0" align="center" cellpadding="3" cellspacing="0" class="small">
  <tr>
    <td class="Big"><img src="template/default/content/images/notify_new.gif" align="absmiddle"><span class="big3"> 任务执行人编辑</span>&nbsp;&nbsp;&nbsp;&nbsp;
	<span style="font-size:12px; float:right; margin-right:20px;">
	
	<a href="admin.php?ac=user&fileurl=<?php echo $fileurl?>&did=<?php echo $duty['id'];?>" style="font-size:12px;"><<返回列表页</a></span>
    </td>
  </tr>
</table>
<script Language="JavaScript"> 
function CheckForm()
{
   if(document.save.startdate.value=="")
   { alert("任务开始时间不能为空！");
     document.save.startdate.focus();
     return (false);
   }
   if(document.save.enddate.value=="")
   { alert("任务结束时间不能为空！");
     document.save.enddate.focus();
     return (false);
   }
   if(document.save.content.value=="")
   { alert("任务描述不能为空！");
     document.save.content.focus();
     return (false);
   }
   
   return true;
}
function sendForm()
{
   if(CheckForm())
      document.save.submit();
}
</script>
<form name="save" method="post" action="?ac=<?php echo $ac;?>&do=add&fileurl=<?php echo $fileurl;?>">
	<input type="hidden" name="view" value="add" />
	<input type="hidden" name="id" value="<?php echo $user['id'];?>" />
	<input type="hidden" name="did" value="<?php echo $duty['id'];?>" />
<table class="TableBlock" border="0" width="80%" align="center" style="border-bottom:#4686c6 solid 0px;">


	<tr>
      <td nowrap class="TableContent" width="15%">任务开始时间：<? get_helps()?></td>
      <td class="TableData"><input type="text" name="startdate" class="BigInput" style="width:168px;" size="20" value="<?php echo $user['startdate'];?>" onClick="WdatePicker();" /></td>
      <td class="TableContent">任务结束时间：<? get_helps()?></td>
      <td class="TableData"><input type="text" name="enddate" class="BigInput" size="20" style="width:168px;" value="<?php echo $user['enddate'];?>" onClick="WdatePicker();" />      </td>
    </tr>
	
	<tr>
      <td nowrap class="TableContent" width="15%"> 附件文档：</td>
      <td colspan="3" class="TableData">
      <?php echo public_upload('appendix',$user['appendix'])?></td>
    </tr>
	<tr>
      <td nowrap class="TableContent" width="15%"> 备注：</td>
      <td colspan="3" class="TableData">
      <textarea name="note" cols="60" rows="5" style="width:590px;" class="BigInput"><?php echo $user['note'];?></textarea></td>
    </tr>
	</table>
<table  width="80%" style="border-left:#4686c6 solid 1px;border-right:#4686c6 solid 1px;" align="center">	
    <tr>
      <td width="15%"  style="border-right:#CCCCCC solid 1px;" class="TableContent">&nbsp;任务描述：<? get_helps()?></td>
      <td width="85%" style="padding-top:10px; padding-bottom:10px; padding-left:3px;">
<script>
        KE.show({
                id : 'content'
        });
</script>
		<textarea name="content" cols="70" rows="12" class="input" style="width:600px;height:300px;"><?php echo $user['content'];?></textarea>	 
      </td>
    </tr>
</table>
<table class="TableBlock" border="0" width="80%" align="center" style="border-bottom:#4686c6 solid 0px;">
    <tr align="center" class="TableControl">
      <td colspan="2" nowrap height="35">

		<input type="button" name="Submit" value="保存信息" class="BigButton" onclick="sendForm();"> 
        
      </td>
    </tr>
  </table>
</form>
 
</body>
</html>
