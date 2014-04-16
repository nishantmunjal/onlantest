<?php
session_start();
include('config.php');
@extract($_POST);
if(isset($_REQUEST['loginbutton']))
{   
      	$qur="select * from adminlogin_tbl where user='".$username."' and password1='".$password1."' and sid=1 ";
	    if(mysql_num_rows(mysql_query($qur))>0)
	    {
		$arr=mysql_fetch_array(mysql_query($qur));
		$_SESSION['user']=$arr['user'];
		$_SESSION['password1']=$arr['password1'];
	    echo "<script>window.location='admin.php';</script>";
		}
	    else
		{
		echo "<script> alert('Username or Password not matched')</script>";
		}
}
	
	
	



?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Login | Onlan Quiz</title>
<link href="css/css.css" media="all" type="text/css" rel="stylesheet"/> 
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>
</head>

<body class="backgnd">
<div align="center">
<div class="header_background"><div class="header"></div></div>
<div class="testback1">

<form action="adminlogin.php" method="post">
<table class="reg_border" cellpadding="5" cellspacing="6">
<tr>
   <td colspan="3" style="text-shadow:#900; font-family:Algerian; font-size:24px; border-bottom:solid #ccc 1px;" align="center"><strong>ADMIN LOGIN PANEL</strong></td>
   </tr>
<tr>
   <td><strong>Username</strong></td>
   <td><strong>:</strong></td>
   <td><input type="text" name="username" id="username" placeholder="Your Username"/></td> 
</tr>
<tr>
   <td><strong>Password</strong></td>
   <td><strong>:</strong></td>
   <td><input type="password" name="password1" id="password1" placeholder="Your Password"/></td> 
</tr>
<tr>   
   <td colspan="3" align="center"><input type="Submit" name="loginbutton" id="sub"  class="loginbutton"  value="" /></td> 
</tr>
</table>
</form>
</div>
</div>
</div>
</body>
</html>