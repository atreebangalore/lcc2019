<?php include "includes/page_elements.php"; ?>
<!DOCTYPE html>
<html>
<head>
<?php incl("Lantana Craft Centre"); ?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<div class="bdy-wrapper" class="clearfix">
<div id="hdr" class="clearfix">
<?php hdr(); ?>
</div>
<div class="menu-sec">
</div>
<script>menu("54%");</script>

<center id="lccp_bdy">
<div id="bdy" class="clearfix">
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
?>
</div>
<div class='divTableCell' style="width: 85%;">
<div id="gall_cont"></div>
</div>
</div>
</div></div>


<!--end of filter -->
</div>
</center>

<div style="clear:both;"></div>
</div>
<div style="clear:both;"></div>
<br><br>
<div id="ftr">
<?php ftr(); ?>
</div>
</div>
</body>
</html>