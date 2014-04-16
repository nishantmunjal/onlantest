<?php
session_start();
include('config.php');
if(!isset($_SESSION['user']) && !isset($_SESSION['password1']))
{
	 echo "<script>window.location='adminlogin.php';</script>";
}
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/css.css" media="all" type="text/css" rel="stylesheet"/> 
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>

<title>Details | Onlan Quiz</title>

</head>

<body class="backgnd">
<div align="center">
<div class="header_background"><div class="header"></div></div>
<div class="testback1">
<div style="float:left; margin-top:0px;margin-right:3px">
<A HREF="javascript:window.print()">
<img src="images/print2.jpg"  title="Print this page"border="0"/></A>
</div>
<a style="border:0px #000000 solid; text-decoration:none;  float:left; margin-top:65px; margin-left:-60px;" href="admin.php"><img src="images/1370197578_Home.png" width="60" height="60" title="Back to Admin Portal"/></a> 

<?php $sql1='select * from test1ques where isdeleted=1;';
$qur1=mysql_query($sql1);
$num=mysql_num_rows($qur1);
echo '<strong>Maximum marks : '.$num*'3'.'<strong>';
echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'.'<strong>Total Questions :'.$num.'</strong>';
?>
<?php
$sql='select * from result order by Obtmarks DESC';
$qur=mysql_query($sql);
?>
<table border="1" align="center" cellspacing="0"  style="margin-top:20px; margin-bottom:380px;">
<tr bgcolor="#999999"><th width="30" align="center">Rank</th><th  width="140">Name</th><th  width="50" align="center">Branch</th><th  width="50" align="center">Year</th><th  width="50" align="center">Corrected</th><th  width="50" align="center">Wrong</th>
<th  width="50" align="center">Unattempted</th><th  width="100" align="center">Obtained Marks</th></tr>
<?php  $i=1;
while($row=mysql_fetch_array($qur))
{
	//$color=($i%2!=0)?'bgcolor="#9999ff"':'';						
	echo '<tr>';
	echo '<td align="center">'.$i.'</td>';
	echo '<td align="center">'.ucwords(strtolower(trim($row['sname']))).'</td>';
	echo '<td align="center">'.$row['branch'].'</td>';
	echo '<td align="center">'.$row['year'].'</td>';
	echo '<td align="center">'.$row['ans_correct'].'</td>';
	echo '<td align="center">'.$row['ans_incorrect'].'</td>';
	echo '<td align="center">'.$row['Ques_utmpted'].'</td>';
	echo '<td align="center"><b>'.$row['Obtmarks'].'</b></td>';
	echo '<tr>';
	
	$i++;		
}
?>

</table>

</div>
</div>
</div>
</body>
</html>