<?php

include('config.php');
@extract($_POST);

if(isset($sub))
{
	    
	$sqlqur='select * from registration_tbl where isdeleted=1';
	$res=mysql_query($sqlqur);
	$row=mysql_fetch_array($res);
	    
/*	if($sname==$row['sname']&&$year==$row['year']&&$branch==$row['branch']&&$roll==$row['roll']&&$user==$row['user'])
	{
		echo '<script>alert("You are already registered. Your Username='.$row['user'].' and Password='.$row['password1'].' ");</script>';
	}*/
	if($sname==''||$year==''||$branch==''||$roll==''||$user==''||$password1=='')
	{
		
		echo '<div class="popupmsg">';
		echo '<div class="popupmsg_content">Fields must be filled.</div>';
		echo '<div class="cross"><a href="registration.php"><img src="images/cross_button.png" title="Close"/></a>  </div>';
		echo '</div>';
		}
	else
	{
		
        $dd=date("Y-m-d");$tt=time("h:i:s");
		$sql='insert into registration_tbl set sname="'.ucwords(strtolower(trim($sname))).'", year="'.$year.'", branch="'.$branch.'" ,roll="'.$roll.'", user="'.$user.'", password1="'.$password1.'", createddate="'.date('Y-m-d').'", createdtime="'.date('H:i:s').'"' ;
		
		if(mysql_query($sql))
		{
			
			echo '<div class="popupmsg">';
		    echo '<div class="popupmsg_content">Congratulations!!! You are registered Successfully<br/><b>Your Username : '.$user.' <br/>Your Password :'.$password1.'</b></div>';
			echo '<div class="cross_login"><a href="index.php"><img src="images/cross_button.png" title="Close"/></a>  </div>';
		    echo '<div class="login"><a href="index.php"><img src="images/login_button.png" title="Click to Login"/></a>  </div>';
		    echo '</div>';
			
			
	   	}
		
	}
		
}

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registration | Onlan Quiz</title> 
<link href="css/css.css" media="all"  rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>

<SCRIPT type="text/javascript">
    window.history.forward();
</script>

</head>
<body class="backgnd">
<div style="border:#000 2px solid; width:120px;height:50px; background-color:#ccc; font-weight:900; margin-top:150px; margin-right:-16px;float:right; border-left-style:inset;border-radius:10px; text-align:center; font-family:'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', 'DejaVu Sans', Verdana, sans-serif;">
<a style="text-decoration:none;" href="index.php" title="Click to Login">
<p style="font-family:Lovelo 'Times New Roman', Times, serif;">Click to Login</p></a>
</div>

<!--<div style="border:#000 1px solid; width:170px;height:auto; box-shadow:4px 4px 4px #111; position:fixed; background-color:#ccc; margin-top:150px; margin-left:-15px;float:left; border-left-style:inset;border-radius:10px; text-align:center;">
<p style="font-family:Algerian 'Courier New', Courier, monospace 'Times New Roman', Times, serif; font-size:18px; text-align:center; border-bottom-style:inset;">ORGANISERS</p>
<ul type="disc" style="font-family:'Courier New', Courier, monospace;  font-size:15px;">
<li>Alok Maurya</li>
<li>Chirag Goel</li>
<li>Spandan</li>
<li>Sumit Singh</li><br />
<strong>&nbsp;-CSE 5th Sem</strong>
</ul>

</div>-->
<div align="center">
<div class="header_background"><div class="header"></div></div>
<div class="testback">

<form action="" method="post" enctype="multipart/form-data">
<table class="reg_border" cellpadding="5" cellspacing="6">
<tr>
   <td colspan="3" style="text-shadow:#900; font-family:Algerian; font-size:24px; border-bottom:solid #ccc 1px;" align="center"><strong>REGISTER HERE</strong></td>
   </tr>

<tr>
   <td><strong>Name</strong></td>
   <td><strong>:</strong></td>
   <td><input type="text" name="sname" id="sname" placeholder="Your Full Name" /></td> 
</tr>
<tr><td><strong>Branch</strong></td>
   <td><strong>:</strong></td>
   <td><select name="branch"><option value="">-SELECT-</option>
                                         <option value="CSE">CSE</option>
                                         <option value="ECE">ECE</option>
                                         <option value="ME">ME</option>
                                         <option value="EEE">EEE</option></select></td>
   
</tr>
<tr>
   <td><strong>Year</strong></td>
   <td><strong>:</strong></td>
   <td><select name="year"><option value="">-SELECT-</option>
                                         <option value="1">1</option>
                                         <option value="2">2</option>
                                         <option value="3">3</option>
                                         <option value="4">4</option></select></td>
   
</tr>
<tr>
   <td><strong>Roll no</strong></td>
   <td><strong>:</strong></td>
   <td><input type="text" name="roll" id="roll" placeholder="Your Roll No"/></td> 
</tr>
<tr>
   <td><strong>Username</strong></td>
   <td><strong>:</strong></td>
   <td><input type="text" name="user" id="user" placeholder="Your Username"/></td> 
</tr>
<tr>
   <td><strong>Password</strong></td>
   <td><strong>:</strong></td>
   <td><input type="password" name="password1" id="password1" placeholder="Your Password"/></td> 
</tr>
<!--<tr>
   <td><strong>Re-Enter Password</strong></td>
   <td><strong>:</strong></td>
   <td><input type="password" name="password2" id="password2" placeholder="Re-enter Password"/></td> 
</tr>-->
<tr>   
   <td colspan="3" align="center" class="regsubmit"><input type="submit" name="sub" id="sub" value="Register"/></td> 
</tr>
</table>
</form>

</div>
</div>

</body>
</html>