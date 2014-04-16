<?php
include('config.php');
@extract($_GET);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Result | Onlan Quiz</title> 
<link href="css/css.css" media="all"  rel="stylesheet" type="text/css"/>
<link rel="shortcut icon" href="images/fevicon2.png" type="text/css"/>
</head>
<body class="backgnd" oncontextmenu="return false;" onload="noBack();" onunload="">
<div align="center">
<div class="header_background"><div class="header"></div></div>
<div class="testback">
<div style="float:right;">
<a href="index.php"><input type="submit" name="logout" value="Home" id="submit" class="logout" title="Logout"/></a>
</div>



<p style="text-shadow:#900; background-color:#CCC; font-family:Algerian; font-size:24px;
margin-top:0px; border-bottom:solid #ccc 1px;" align="center"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PERFORMANCE RECORD</strong></p>
<p style="text-shadow:#900; font-family:Space Age; font-size:35px; margin-top:0px;  align="center"><strong>QUORAHYKE</strong></p>
<p style="font-family:Dekers_light; font-size:10px; margin-top:-30px; align="center"><strong>onlan GK event</strong></p>
<div style="clear:both"></div>
<div style="float:right; margin-top:-70px;margin-right:3px">
<A HREF="javascript:window.print()">
<img src="images/print2.jpg"  title="Print this page"border="0"/></A>
</div>



<?php

echo '<table cellspacing="0" cellpadding="0" class="reg_border_res" border="0px #000 solid" >';
echo '<tr>';
echo '<td>';echo '<strong>Name</strong>'; echo '</td>';
echo '<td>';echo '<strong>:</strong>'; echo '</td>';
echo '<td>';echo '<p style="font-family:"Courier New", Courier, monospace">'.$sname.'</p>';  echo '</td>';
echo '</tr>';
echo '<tr>';
echo '<td>';echo '<strong>Branch</strong>'; echo '</td>';
echo '<td>';echo '<strong>:</strong>'; echo '</td>';
echo '<td>';echo '<p style="font-family:"Courier New", Courier, monospace">'.$branch.'</p>';  echo '</td>';
echo '</tr>';
echo '<tr>';
echo '<td>';echo '<strong>Year</strong>'; echo '</td>';
echo '<td>';echo '<strong>:</strong>'; echo '</td>';
echo '<td>';echo '<p style="font-family:"Courier New", Courier, monospace">'.$year.'</p>';  echo '</td>';
echo '</tr>';
echo '</table>';

echo '<div align="center">';
echo '<table cellpadding="5" cellspacing="0" class="reg_border_res" >';
echo '<tr>';
echo '<td><strong>Maximum Marks</strong></td>' ;
echo '<td><strong>:</strong></td>' ;
echo '<td>'.$numrows*'3'.'</td>' ;	
echo '</tr>';
echo '<tr>';
    echo '<td><strong>Questions Answered Correctly</strong></td>' ;
    echo '<td><strong>:</strong></td>' ;
	echo '<td>'.$correctedques.'<td>';
echo '</tr>';
echo '<tr>';
    echo '<td><strong>Questions Answered Incorrectly</strong></td>' ;
    echo '<td><strong>:</strong></td>' ;
	echo '<td>'.$uncorrectedques.'</td>';
echo '</tr>';
echo '<tr>';
    echo '<td><strong>Questions Unattempted</strong></td>' ;
    echo '<td><strong>:</strong></td>' ;
	echo '<td>'.$unattemtedques.'</td>';
echo '</tr>';
echo '<tr>';
    echo '<td><strong>Total Marks Obtained</strong></td>' ;
    echo '<td><strong>:</strong></td>' ;
	echo '<td>'.$positivemarks.'</td>';
echo '</tr>';
echo '<table>';
echo '</div>';

?>
</div>
</div>
</body>
</html>