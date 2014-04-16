<?php
session_start();
include('config.php');
@extract($_POST);
if(!isset($_SESSION['user']) && !isset($_SESSION['password1']))
{
	 echo "<script>window.location='index.php';</script>";
}


?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Test | Onlan Quiz</title>
<link href="css/css.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>
<script>
var TotalMinutes,ts;
window.onload=function(){
TotalMinutes=29;
ts=60;
window.setInterval(Tick	,1000);
}

function Tick() {
ts-=1;
document.getElementById('timer').innerHTML=TotalMinutes+":"+ts;
if(TotalMinutes ==0 && ts==0)
{   
	document.getElementById('submit').click();
	
	}
if(ts==0)
{TotalMinutes -=1;
ts=60;
}
}

</script>
<script>
window.onblur=call;
  function call(){alert('You will be Disqualified!!! Dare not to go outside this window!!!');}
</script>

</head>

<body class="backgnd" oncontextmenu="return false;">

<div align="center">
<div class="header_background"><div class="header"></div></div>
<div class="testbacktest" >
<div id="timer"></div>


<!--<form action="index.php" method="post">
<input type="submit" name="logout" value="Logout" class="logout" title="Logout"/>
</form>-->
<p style="text-shadow:#900; font-family:Space Age; font-size:35px; margin-top:0px;  align="center"><strong>QUORAHYKE</strong></p>
<p style="font-family:Dekers_light; font-size:10px; margin-top:-30px; border-bottom-style:inset; align="center"><strong>onlan GK event</strong></p> 

<?php

$sql= 'select * from test1ques where isdeleted=1 order by rand()' ;
$qur=mysql_query($sql);
$numrows=mysql_num_rows($qur);
echo '<form action="calculate.php?sname='.$_SESSION['sname'].'" method="post" name="form">';
$i=1;
while($row=mysql_fetch_array($qur))
{
  
  
   echo '<table border="0" width="960" height="auto" cellpadding="0" cellspacing="0" class="ques_ser">';
   echo '<tr>';
       echo '<td>';echo '<strong>'.$i.')</strong>  '.$row['question']; echo  '</td>';       
   echo '</tr>';
   echo '<tr>';
	   echo '<td>';echo '<input type="radio" name="option'.$row['qid'].'" value="'.$row['opt1'].'">'.'A. '.$row['opt1']; echo '</td>';
   echo '</tr>';
   echo '<tr>';
	   echo '<td>';echo '<input type="radio" name="option'.$row['qid'].'" value="'.$row['opt2'].'">'.'B. '.$row['opt2']; echo '</td>';
   echo '</tr>';
    echo '<tr>';
	   echo '<td>';echo '<input type="radio" name="option'.$row['qid'].'" value="'.$row['opt3'].'">'.'C. '.$row['opt3']; echo '</td>';
   echo '</tr>';
   echo '<tr>';
	   echo '<td>';echo '<input type="radio" name="option'.$row['qid'].'" value="'.$row['opt4'].'">'.'D. '.$row['opt4']; echo '</td>';
   echo '</tr>';
   echo '</table>';
   $i++;  
}
   
	  echo '<td><input type="submit" name="totsub" id="submit" value="SEE RESULT"/></td>';
   echo '</tr>';
	  
	  
   echo '</form>';
?>
</div>
</div>
</div>
</body>
</html>