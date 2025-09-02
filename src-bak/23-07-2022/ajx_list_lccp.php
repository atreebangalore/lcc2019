<?php
include 'connect.php';
if (!empty($_GET['lccp_cat'])){$lccp_cat=$_GET['lccp_cat'];}else{$lccp_cat='';}
$cnx=cnx();
$html='';
if ($lccp_cat == ""){
$sql=$cnx->prepare("select * from lcc_products order by lccp_cat");
} else {
$sql=$cnx->prepare("select * from lcc_products where lccp_cat='".$lccp_cat."' order by lccp_cat");
}
$i=1;
$sql->execute();
$nor=$sql->rowCount();
$html.="<div id='lccp_tab' class='divTable'><div class='divTableBody'>";
$html.="<div class='divTableRow'>";
while($row=$sql->fetch()){
	$html.="<div class='divTableCell'><center><br><a href='img/product_images/".$row['lccp_pic']."' data-lightbox='".$row['lccp_cat']." data-title='".$row['lccp_name']."' style='text-align: center; border: 0px solid #eee;'><span class='caption'>".$row['lccp_name']."</span><br><img src='img/product_images/".$row['lccp_pic']."' style='width: 100px; height: auto;' /><br>".$row['lccp_curr']." ".$row['lccp_price']."<br>".str_replace("\n","<br>",$row['lccp_dimdesc'])."</a></center></div>";
	if ($i>4){
		$html.="</div><div class='divTableRow shaded' style='background: #ddd;'><div class='divTableCell'>&nbsp;</div><div class='divTableCell'>&nbsp;</div><div class='divTableCell'>&nbsp;</div><div class='divTableCell'>&nbsp;</div><div class='divTableCell'>&nbsp;</div></div><div class='divTableRow'>";
		$i=0;	
	}
	$i=$i+1;
}
$html.="</div><div class='divTableRow shaded' style='background: #ddd;'><div class='divTableCell'>&nbsp;</div></div>";
$html.="</div></div>";
$sql->closeCursor();
$cnx=NULL;
echo $html;
?>