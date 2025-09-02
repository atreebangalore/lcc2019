<!--<!DOCTYPE html> -->
<html lang="en">
<head>
<title>Lantana Craft Centre</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="jquery-ui-1.11.4.custom/external/jquery/jquery.js"></script>
<script src="jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="stylesheet" href="jquery-ui-1.11.4.custom/jquery-ui.min.css">
<script type='text/javascript' src='plugins/lightbox2/dist/js/lightbox.min.js'></script>
<link rel='stylesheet' type='text/css' href='plugins/lightbox2/dist/css/lightbox.min.css'/>
<script src="bs/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bs/css/bootstrap.min.css">
<link rel="stylesheet" href="bs/css/custom.css">
<style>
#gall_tab{
width: 100% !important;
max-width: 100% !important;
}
#gall_tab td#side_bar{
border: 1px solid #ddd !important;
}
#src_frame{
border: 1px;
}
#lccp_tab{
border-top: 1px solid #ddd !important;
border-left: 1px solid #ddd !important;
border-collapse: separate !important;
border-spacing: 0px !important;
}
#lccp_tab td{
border-right: 1px solid #ddd !important;
border-bottom: 1px solid #ddd !important;
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
#lccp_tab td a{
text-decoration: none !important;
color: #000;
margin: 5px 5px 5px 5px !important;
}
#lccp_tab td:hover{
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.5);
}

/* DivTable.com */
.divTable{
	display: table;
	width: 100%;
border-top: 1px solid #ddd !important;
border-left: 1px solid #ddd !important;
border-collapse: separate !important;
border-spacing: 0px !important;
}
.divTableRow {
	display: table-row;
}
.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
}
.divTableCell, .divTableHead {
	border: 1px solid #999999;
	display: table-cell;
	padding: 3px 10px;
border-right: 1px solid #ddd !important;
border-bottom: 1px solid #ddd !important;
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
.divTableHeading {
	background-color: #EEE;
	display: table-header-group;
	font-weight: bold;
}
.divTableFoot {
	background-color: #EEE;
	display: table-footer-group;
	font-weight: bold;
}
.divTableBody {
	display: table-row-group;
}
#lccp_tab .divTableCell a{
text-decoration: none !important;
color: #000;
margin: 5px 5px 5px 5px !important;
}
#lccp_tab .divTableCell:hover{
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.5);
}
</style>
<script>
$(document).ready(function(){
	get_pics('');
	$("#lccp_cat_l").bind("change",function(){
		//alert(this.value);
		$("#lccp_cat").val(this.value);
		get_pics($("#lccp_cat").val());
	});
});
function get_pics(lccp_cat){
	$.ajax({
		type    :'GET',
       	url     :'ajx_list_lccp.php',
		data    :{"lccp_cat":lccp_cat},
       	success: function(response) {
			$('#gall_cont').empty().append(response);
		}
	});
}
</script>
</head>
<body>
<div class="hdr container-fluid clearfix" style="margin-bottom:0;background-image: url(img/lantana.gif);">
<div style="margin: 2px 0px 2px 0px !important;">
<div style="float: left; width: 7%;border: 0px solid #000;margin-top: 1%;"><a href="index.php"><img class="atree-logo" src="img/lcc_logo.gif" align="absmiddle" style="width: 98%; height: auto;" /></a></div>
<div  style="float: left; width: 93%; border: 0px solid #000;margin-top: 1%;"><span style="margin: 0px auto 0px auto;font-size: 2.5vw; font-weight: bold;color: #fff;">Lantana Craft Centre</span></div>
<!--<div style="float: left; width: 20%; border: 0px solid #000;"><a href="#" target="_blank"><img class="ftr-logo" src="img/cfr_ftr.png" style="width: 98%; height: auto;" align="absmiddle" /></a></div> -->
</div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <!--<a class="navbar-brand" href="index.php">CFR</a> -->
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="about.php">About</a></li>
        <li class="active"><a href="lcc_products.php">Lantana Products</a></li>
      	<li class="dropdown">
        	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Resources
        	<span class="caret"></span></a>
        	<ul class="dropdown-menu">
          		<li><a href="resources/Lantana_Craft_Training_Program_Protocol_April_2022.pdf" target="_blank">Training Protocol</a></li>
          		<li><a href="resources/ATREE_Lantana_Craft_Center_LCC_catalogue.pdf" target='_blank'>Product Catalogue</a></li>
          		<li><a href="igallery.php">Lantana Crafts Gallery</a></li>
        	</ul>
      	</li>		
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid clearfix">
<div class="row">
<div class="col-sm-12 clearfix">

<!--start of products filter -->

<h3>Lantana Craft Centre Products</h3>

<div class='divTable' id="gall_tab"><div class='divTableBody'>
<div class='divTableRow'>
<div class='divTableCell' style="width: 15%;" id="side_bar">
<?php
include 'connect.php';
$cnx=cnx();
$sql=$cnx->prepare("select distinct lccp_cat from lcc_products");
$sql->execute();
echo "<h4>Filter By:</h4>";
echo "<select id='lccp_cat_l' name='lccp_cat_l' style='width: 100%;'>";
echo "<option value='' selected>-select-</option>";
while($row=$sql->fetch()){
echo "<option value='".$row['lccp_cat']."'>".$row['lccp_cat']."</option>";
}
echo "</select><br>";
echo "<input type='text' id='lccp_cat' name='lccp_cat' style='display: none;' />";
$sql->closeCursor();
$cnx=NULL;
?><br><br>
<strong>Note:</strong><br>
<h5>H: Height<br>
L: Length<br>
W: Width<br>
': Inches</h5>
</div>
<div class='divTableCell' style="width: 85%;">
<div id="gall_cont"></div>
</div>
</div>
</div></div>


<!--end of filter -->


</div>
</div>
</div>

<div id="ftr" class="container-fluid text-center ftr clearfix" style="margin-bottom:0">
<div id="ftr-links" class="clearfix"><h5 style="margin-left: -200px;">Copyright 2019 © Lantana Craft Centre. All rights reserved.</h5></div>
</div>
</body>
</html>
