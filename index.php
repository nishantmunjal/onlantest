<?php
session_start();
include('config.php');
@extract($_POST);
if(isset($_REQUEST['loginbutton']))
{   
	$sql='select * from registration_tbl where user="'.$username.'" and password1="'.$password1.'" and isdeleted=1 and is_login=0';
	$qur=mysql_query($sql);	
	
	if(mysql_num_rows($qur)>0)
	{ 	
	    $row=mysql_fetch_array($qur);
		$_SESSION['sname']=$row['sname'];
		$_SESSION['user']=$row['user'];
		$_SESSION['password1']=$row['password1'];
	    $_SESSION['branch']=$row['branch'];
	    $_SESSION['year']=$row['year'];
		$sql='UPDATE registration_tbl SET is_login=1 WHERE user="'.$username.'" and password1="'.$password1.'";' ;
		$qur=mysql_query($sql);	
		
		echo '<script>window.location="quizinstructions.php"; </script>';
		}
		else
		{
			echo '<div class="popupmsg">';
		    echo '<div class="popupmsg_content">Username or Password do not match. Try Again!!!</div>';
		    echo '<div class="cross"><a href="index.php"><img src="images/cross_button.png" title="Close"/></a>  </div>';
		    echo '</div>';
			
			}
	}



?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login | Onlan Quiz</title>
<link href="css/css.css" media="all" type="text/css" rel="stylesheet"/> 
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>
</head>

<body class="backgnd">
<div align="center">
<div class="header_background"><div class="header"></div></div>
<div class="testback1">

<form action="" method="post">
<table class="reg_border" cellpadding="5" cellspacing="6">
<tr>
   <td colspan="3" style="text-shadow:#900; font-family:Algerian; font-size:24px; border-bottom:solid #ccc 1px;" align="center"><strong>LOGIN PANEL</strong></td>
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
   <td colspan="3" align="center"><input type="Submit" name="loginbutton" id="sub"  class="loginbutton" title="Login to Start Test" value="" /></td> 
</tr>
</table>
</form>
<p style="font-family:'Courier New', Courier, monospace; margin-bottom:0px;">Yet not Registered!!!. Click to Register</p>
<a href="registration.php"><img src="images/registerhere.jpg" title="Click here for Registration"/></a>
</div>
</div>
</html>