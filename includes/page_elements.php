<?php
function incl($page_title){
$html='';
$html.="<title>".$page_title."</title>";
//$html.="<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1' />";
$html.="<meta name='viewport' content='width=device-width, initial-scale=1'>";
//$html.="<meta name='viewport' content='initial-scale=1.0'>";
$html.="<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />";
$html.="<script src='js/dmenu.js' language='javascript' type='text/javascript'></script>";
$html.="<link rel='stylesheet' type='text/css' href='css/hbar.css' media='screen, print' />";
$html.="<script type='text/javascript'  src='jquery-ui-1.10.0.custom/js/jquery-1.9.0.js'></script>";
$html.="<script type='text/javascript'  src='jquery-ui-1.10.0.custom/js/jquery-ui-1.10.0.custom.min.js'></script>";
$html.="<script type='text/javascript'  src='plugins/dt194/media/js/jquery.dataTables.js'></script>";
$html.="<script type='text/javascript'  src='plugins/dt194/extras/TableTools/media/js/ZeroClipboard.js'></script>";
$html.="<script type='text/javascript'  src='plugins/dt194/extras/TableTools/media/js/TableTools.js'></script>";
$html.="<script type='text/javascript'  src='plugins/jquery-layout/js/jquery.layout.min.1.3.js'></script>";
$html.="<script type='text/javascript' src='jquery-ui-1.10.0.custom/ui/jquery.ui.position.js'></script>";
$html.="<script type='text/javascript' src='plugins/dialogextend/build/jquery.dialogextend.js'></script>";
$html.="<script type='text/javascript'  src='plugins/highlight/jquery.highlight.js'></script>";
$html.="<script type='text/javascript' src='plugins/lightbox2/dist/js/lightbox.min.js'></script>";
$html.="<link rel='stylesheet' type='text/css' href='jquery-ui-1.10.0.custom/css/ui-lightness/jquery-ui-1.10.0.custom.css'/>";
$html.="<link rel='stylesheet' type='text/css' href='plugins/dt194/media/css/jquery.dataTables.css'/>";
$html.="<link rel='stylesheet' type='text/css' href='plugins/dt194/extras/TableTools/media/css/TableTools.css'/>";
$html.="<link rel='stylesheet' type='text/css' href='plugins/jquery-layout/css/layout-default-latest.css'/>";
$html.="<script type='text/javascript'  src='plugins/timepicker/jquery.ui.timepicker.js'></script>";
$html.="<link rel='stylesheet' type='text/css' href='plugins/timepicker/jquery.ui.timepicker.css'/>";
$html.="<link rel='stylesheet' type='text/css' href='plugins/lightbox2/dist/css/lightbox.min.css'/>";
$html.="<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>";
$html.="<link rel='stylesheet' type='text/css' href='css/hbar.css'/>";
$html.="<link rel='stylesheet' type='text/css' href='css/lcc.css'/>";
$html.="<link rel='stylesheet' type='text/css' href='css/resp.css'/>";
$html.="<script src='js/controller.js'></script>";
echo $html;
}

function hdr(){
$html='';
$html.='<table>';
$html.='<tr>';
$html.='<td id="site-logo"><a href="index.php"><img src="img/lcc_logo.gif" style="width: 100px; height: auto;" /></a></td>';
$html.='<td id="site-name">';
$html.='<div class="title_eng"><a href="index.php">Lantana Craft Centre</a></div>';
$html.='</td>';
$html.='</tr>';
$html.='</table>';
echo $html;
}

function navi_trail($trail){
$trail_arr=explode(",",$trail);
$htm='';
$htm.="<div class='navi-trail'>";
for($i=0;$i<count($trail_arr);$i++){
$htm.="&nbsp;&raquo;&nbsp;";
if ($i==count($trail_arr)-1){
$htm.="<strong>".$trail_arr[$i]."</strong>";
}else{
$htm.=$trail_arr[$i];
}
}
$htm.="</div>";
echo $htm;
}

function ftr(){
$html='';
$html.='<div id="ftr-links">';
$html.='Copyright 2019 © Lantana Craft Centre. All rights reserved.';
$html.='</div>';
echo $html;
}
?>