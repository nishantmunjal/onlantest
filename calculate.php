<?php
session_start();
include('config.php');
@extract($_POST);
if(!isset($_SESSION['user']) && !isset($_SESSION['password1']))
{
	 echo "<script>window.location='index.php';</script>";
}
$positivemarks=0;
$correctedques=0;
$uncorrectedques=0;
$unattemtedques=0;
$name=$_SESSION['sname'];
$branch=$_SESSION['branch'];
$year=$_SESSION['year'];
$user=$_SESSION['user'];

$sql= 'select * from test1ques where isdeleted=1 order by rand()' ;
$qur=mysql_query($sql);
$numrows=mysql_num_rows($qur);



while($row=mysql_fetch_array($qur))
{
	  
	$selectedradio=@$_POST['option'.$row['qid']];
	if($selectedradio==$row['correct_ans'])
    {
		$positivemarks=$positivemarks+3;
		$correctedques++;
	}
	elseif($selectedradio=='')
	{
		$unattemtedques++;
		}
	
	else
	{
		 $positivemarks=$positivemarks-1;
		 $uncorrectedques++;
		 }	
}

$sqlinsert='insert into result set sname="'.$name.'", branch="'.$branch.'", year="'.$year.'", ans_correct="'.$correctedques.'",user="'.$user.'", ans_incorrect="'.$uncorrectedques.'", Ques_utmpted="'.$unattemtedques.'", Obtmarks="'.$positivemarks.'"';
mysql_query($sqlinsert);
session_destroy();
header("Location:result.php?sname=$name&branch=$branch&year=$year&correctedques=$correctedques&uncorrectedques=$uncorrectedques&unattemtedques=$unattemtedques&numrows=$numrows&positivemarks=$positivemarks");