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
<title>Instructions | Onlan Quiz </title>
<link href="css/css.css" media="all" type="text/css" rel="stylesheet"/>
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>
</head>


<body class="backgnd">
<div align="center">
<div class="header_background"><div class="header"></div></div>
<div class="testback1">
<h4><?php echo 'Welcome '.strtoupper($_SESSION['sname']); echo '</h4>';
          echo '<p>See Below Instructions carefully.</p> ';
    ?>
<h2 style="text-shadow:#900; font-family:Algerian; font-size:24px; border-bottom:solid #ccc 1px;" align="center"><strong>GENERAL INSTRUCTIONS</strong></h2>
<p class="instruction" >
<div style="clear:both"></div>
<ul type="square">
   <li class="instruction">There are total <?php $tt='select * from test1ques where isdeleted=1';$to=mysql_num_rows(mysql_query($tt));echo '<b>'.$to.'</b>'; ?> questions.</li>
   <li>Press <b>F11</b> Key before Starting your test.</li>
   <li>There is negative marking of -1 per Questions of 3 marks each.</li>
   <li>You may change your response after selecting answers but before submitting.</li>
   <li>Total time alloted  to you is <b>30 minutes</b> </li>
   <li>Try to Submit your test before the timer runs out.</li>
   <li>Don't Press Refresh or Back Button.</li>
</ul>
</p>
<?php echo '<div class="wishmsg">';
echo 'Good luck !!! ';
echo strtoupper($_SESSION['sname']);
echo '</div>';
?><a href="test1.php?sname=<?php echo $_SESSION['sname'];  ?>"><p style="font-family:'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif; font-weight:900;">Click to Start Test</a>

</div>
</div>
</body>
</html>