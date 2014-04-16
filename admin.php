<?php
session_start();
include('config.php');
@extract($_POST);
if(!isset($_SESSION['user']) && !isset($_SESSION['password1']))
{
	 echo "<script>window.location='adminlogin.php';</script>";
}
if(isset($_REQUEST['sub']))
{
	if($question==''||$option1==''||$option2==''||$option3==''||$option4==''||$correct_answer=='')
	    {
		
		echo '<div class="popupmsg">';
		echo '<div class="popupmsg_content">Fields must be filled.</div>';
		echo '<div class="cross"><a href="admin.php"><img src="images/cross_button.png" title="Close"/></a>  </div>';
		echo '</div>';
		}
		else
		{
	$sql='insert into test1ques set question="'.$_POST['question'].'", opt1="'.$_POST['option1'].'", opt2="'.$_POST['option2'].'", opt3="'.$_POST['option3'].'", opt4="'.$_POST['option4'].'" ,correct_ans="'.$correct_answer.'" ';
	echo $sql;
	if(mysql_query($sql))
	   {
		
	
		echo '<div class="popupmsg">';
		echo '<div class="popupmsg_content">Question has been added to Database</div>';
		echo '<div class="cross"><a href="admin.php"><img src="images/cross_button.png" title="Close"/></a>  </div>';
		echo '</div>';
		
		
	   }
	 }
}

if(isset($_REQUEST['logout']))
{
   	
	session_destroy();
	echo '<div class="popupmsg">';
		echo '<div class="popupmsg_content">You are Logout Successfully!!!</div>'; 
		echo '<div class="ok"><a href="adminlogin.php" title="OK"><img src="images/Ok.png" title="OK"/></a></div>';
		echo '</div>';
	}

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin | Onlan Quiz</title>
<link href="css/css.css" media="all" type="text/css" rel="stylesheet"/> 
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>
<style>
textarea:hover{
	background-color:#eee;}

</style>
</head>

<body class="backgnd">
<div align="center">
<div class="header_background"><div class="header"></div></div>
<div class="testback">

<form action="" method="post">
<input type="submit" name="logout" value="Logout" class="logout" title="Logout"/>
</form> <span><?php 
echo 'Welcome '.strtoupper($_SESSION['user']);

$sql= 'select * from test1ques' ;
$qur=mysql_query($sql);
$numrows=mysql_num_rows($qur);
echo '<div style="position:fixed;margin-top:10px;color:#aaa;width:100px;"><h4>Total Questions Inserted : '.$numrows.'</h4></div>';
?>
</span>

<p style="text-shadow:#900; font-family:Space Age; font-size:35px; margin-top:0px;  align="center"><strong>Admin Portal</strong></p>
<p style="font-family:Dekers_light; font-size:20px; margin-top:-30px; align="center"><strong>Quorahyke</strong></p>
<form action="" method="post"  enctype="multipart/form-data">
<table>
<tr>
<td><textarea name="question" placeholder="Add Question here..." width="50" style="height:100px;box-shadow:3px 3px 3px #ddd; width:600px; border-radius:10px; border-color:#CCC; padding:5px;"></textarea></td>
</tr>
<tr>
<td><input type="text" name="option1" placeholder="Enter 1st Option" style="box-shadow:3px 3px 3px #ddd;"/></td>
</tr>
<tr>
<td><input type="text" name="option2" placeholder="Enter 2nd Option" style="box-shadow:3px 3px 3px #ddd;"/></td>
</tr>
<tr>
<td><input type="text" name="option3" placeholder="Enter 3rd Option" style="box-shadow:3px 3px 3px #ddd;"/></td>
</tr>
<tr>
<td><input type="text" name="option4" placeholder="Enter 4th Option" style="box-shadow:3px 3px 3px #ddd;"/></td>
</tr>
<tr>
<td><input type="text" name="correct_answer" placeholder="Enter Correct Answer" style="box-shadow:5px 5px 5px #ddd"/>
</tr>
<tr>
<td><input type="submit" name="sub" value="Insert this Question"/><br /><input type="reset" value="Clear this Entry"/></td>
</tr>
</table>
</form>
<div><a class="switch1" href="student_details.php">Switch to Student Rank list#</a></div><br />
<div><a class="switch1" href="questions_details.php">See all Questions with their options</a></div>
</div>
</div>
</div>
</body>
</html>