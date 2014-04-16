<?php 
session_start();
include('config.php'); 
if(!isset($_SESSION['user']) && !isset($_SESSION['password1']))
{
	 echo "<script>window.location='adminlogin.php';</script>";
}
if(isset($_REQUEST['act']))
{
	$upd='update test1ques set isdeleted=1 where qid='.$_REQUEST['qid'].'';
	$qur2=mysql_query($upd);
	if($qur2)
	{
		 echo "<script> window.location='questions_details.php';</script>"	;
		 }
}
if(isset($_REQUEST['deact']))
{
	$upd='update test1ques set isdeleted=0 where qid='.$_REQUEST['qid'].'';
	$qur2=mysql_query($upd);
	if($qur2)
	{
		 echo "<script>window.location='questions_details.php';</script>"	;
		 }
}
 ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Questions | Onlan Quiz</title>
<link href="css/css.css" media="all" type="text/css" rel="stylesheet"/> 
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>

</head>


<body class="backgnd">
<div class="qd-detail">
<table  style="float:left; padding-top:40px;" border="0" cellpadding="0" cellspacing="0">
<tr><?php $sql1='select * from test1ques where isdeleted=1';
$qur1=mysql_query($sql1);
$tot_active=mysql_num_rows($qur1);?>
<td>1. Total Number of questions appearing in test are <?php echo '<strong>'. $tot_active.'</strong>'; ?></td></tr>
<tr><td>2. Status : 1 (Active Question)</td></tr>
<tr><td>3. Status : 0 (Inactive Question)<td></tr>
</table></div>
<div align="center">
<div class="header_background"><div class="header"></div>
<div class="testback1">
<a style="text-decoration:none; font-family:'Arial Black', Gadget, sans-serif; font-weight:bold;" href="admin.php" title="Back">Back</a>
<?php  $sql= 'select * from test1ques ';
$qur=mysql_query($sql);
?>

<table border="1" align="center" cellspacing="0"  style="margin-top:20px; margin-bottom:380px;">
<tr bgcolor="#ccc"><th width="30" align="center">Sr. No</th><th  width="auto">Questions</th><th  width="50" align="center">Option1</th><th  width="50" align="center">Option2</th><th  width="50" align="center">Option3</th><th  width="50" align="center">Option4</th><th  width="50" align="center">Correct_ans</th>
<th  width="50" align="center">Status</th><th  width="70" align="center">Operations</th></tr>
<?php
$i=1;
while($row=mysql_fetch_array($qur))
{
	echo '<tr>';
	echo '<td align="center">'.$i.'</td>';
	echo '<td align="center">'.$row['question'].'</td>';
	echo '<td align="center" style="background-color:#ccc;">'.$row['opt1'].'</td>';
	echo '<td align="center" style="background-color:#eee;">'.$row['opt2'].'</td>';
	echo '<td align="center" style="background-color:#ccc;">'.$row['opt3'].'</td>';
	echo '<td align="center" style="background-color:#eee;">'.$row['opt4'].'</td>';
	echo '<td align="center" style="background-color:#0fc;"><b>'.$row['correct_ans'].'</b></td>';
	echo '<td align="center">'.$row['isdeleted'].'</td>';
	echo '<td align="center"><a href="questions_details.php?deact=Deactivate&qid='.$row['qid'].'" title="Deactivate(set to 0)"><img src="images/Delete.jpg" width="20" height="20" alt="0"/></a>&nbsp;';
	
	echo '<a href="questions_details.php?act=activate&qid='.$row['qid'].'" title="Activate(set to 1)"><img src="images/edit.png" width="20" height="20" alt="1"/></a></td>';
	echo '<tr>';
	$i++;		
}


?>


</div>
</div>
</div>
</body>
</html>