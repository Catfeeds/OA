<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type"/>
<link rel="stylesheet" type="text/css" href="template/default/content/css/style.css">
<script language="javascript" type="text/javascript" src="DatePicker/WdatePicker.js"></script>
<script src="template/default/tree/js/admincp.js?SES" type="text/javascript"></script>
<script charset="utf-8" src="eweb/kindeditor.js"></script>

<title>Office 515158 2011 OA办公系统</title>
 <script Language="JavaScript"> 
function CheckForm()
{
   if(document.save.title.value=="")
   { alert("订单名称不能为空！");
     document.save.title.focus();
     return (false);
   }
	if(document.save.price.value=="")
   { alert("总金额不能为空！");
     document.save.price.focus();
     return (false);
   }

<?
global $db;
$query = $db->query("SELECT * FROM ".DB_TABLEPRE."crm_form where type1='crm_order'  ORDER BY inputnumber Asc");
	while ($row = $db->fetch_array($query)) {
		if($row["confirmation"]=='1'){
?>

if(document.save.<?php echo $row["inputname"]?>.value=="")
   { alert("<?php echo $row["formname"]?>不能为空！");
     document.save.<?php echo $row["inputname"]?>.focus();
     return (false);
   }
   
<?php
	}
}
?>
   return true;
}
function sendForm()
{
   if(CheckForm())
      document.save.submit();
}
</script>
</head>
<body class="bodycolor">
<form name="save" method="post" action="?ac=<?php echo $ac;?>&do=edit&fileurl=<?php echo $fileurl;?>" style="margin-top:1px; margin-left:0px; margin-right:0px;">
	<input type="hidden" name="view" value="add" />
	<input type="hidden" name="id" value="<?php echo $view['id'];?>" />
	<input type="hidden" name="type" value="<?php echo $view['type'];?>" />
<div id="navPanel">
<div id="navMenu" style="padding-left:50px;">
<a href="admin.php?ac=<?php echo $ac;?>&fileurl=<?php echo $fileurl;?>&type=<?php echo $view['type'];?>" ><span><img src="template/default/content/images/p3.gif" width="16" height="16" align="absmiddle">订单列表</span></a>
<a href="admin.php?ac=<?php echo $ac;?>&fileurl=<?php echo $fileurl;?>&do=edit&id=<?php echo $view['id'];?>&type=<?php echo $view['type'];?>" class="active"><span><img src="template/default/content/images/p2.gif" width="16" height="16" align="absmiddle">订单编辑</span></a>
<a href="admin.php?ac=<?php echo $ac;?>&fileurl=<?php echo $fileurl;?>&do=view&id=<?php echo $view['id'];?>&type=<?php echo $view['type'];?>"><span><img src="template/default/content/images/p4.gif" width="16" height="16" align="absmiddle">订单查看</span></a>
</div>
<div id="search" style="float: right; padding-right:100px;">
	
	<input type="button" value=" 保 存 " class="BigButtonBHover" onClick="sendForm();">


 
</div>
</div>



<div style="position:absolute; height:90%; width:100%;overflow:auto"> 
<table class="TableBlock" border="0" width="90%" align="center" style="margin-top:20px;">
<tr>
      <td nowrap class="TableHeader" colspan="4">基本信息</td>
    </tr>
	
	
	<tr>
      <td nowrap class="TableContent" width="15%"> 
        流水号：<? get_helps()?></td>
      <td class="TableData" width="35%"><input name="number" type="text" class="BigInput" id="number" style="width: 200px;" value="<?php echo $view['number'];?>"/></td>
	  
	  <td class="TableContent" width="15%"> 名称：<? get_helps()?></td>
      <td class="TableData" width="35%">
	  <input name="title" type="text" class="BigInput" id="title" style="width: 300px;" value="<?php echo $view['title'];?>"/>
       </td>
    </tr>
	<tr>
      <td nowrap class="TableContent" width="15%"> 
        总金额：<? get_helps()?></td>
      <td class="TableData" width="35%"><input name="price" type="text" class="BigInput" id="price" style="width: 300px;" value="<?php echo $view['price'];?>"/></td>
	  
	  <td class="TableContent" width="15%"> 客户名称：</td>
      <td class="TableData" width="35%">
	  <?php
	  if($view['cid']!=''){
		  echo public_value('title','crm_company','id='.$view['cid']);
	  }
	  ?>
	  
       </td>
    </tr>
	<tr>
      <td nowrap class="TableContent" width="15%"> 
        报价单：</td>
      <td class="TableData" width="35%">
	  <?php
	  if($_GET['cid']!=''){
		  echo public_value('title','crm_offer','id='.$_GET['oid']);
	  	  echo '<input type="hidden" name="oid" value="'.$_GET['oid'].'" />';
	  }else{
		  if($view['oid']!=''){
			  crm_title('选择报价单','oname','oid','crm_offer',1,$view['oid'],public_value('title','crm_offer','id='.$view['oid']));
		  }else{
		  	  crm_title('选择报价单','oname','oid','crm_offer',1);
		  }
	  }
	  ?>
	  </td>
	  
	  <td class="TableContent" width="15%"> </td>
      <td class="TableData" width="35%">
	  
	  
       </td>
    </tr>

</table>
<?php
//引入表单
form_edit('订单信息','crm_order',$view['id']);
//引入编辑器
form_edit_eweb('crm_order',$view['id']);
?>

</div> 
</form>

 
</body>
</html>
