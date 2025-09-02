$(document).ready(function(){
/*	$("#menu1").menu();
	$("#menu2").menu();
	$("#menu3").menu();
	$("#menu4").menu();
	$("#menu5").menu();*/
	$("input[name='local-lang']").change(function(){
				menu("12%");
	});
	initialiseMenu();
});
function call_page(pag){
	alert(pag);
	//window.location.href = pag;
}
/* Toggle between showing and hiding the navigation menu links when the user clicks on the hamburger menu / bar icon */
/*function myFunction() {
  var x = document.getElementById("myLinks");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}*/

function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}

function showSubMenu(){
	var objThis = this;	

	for(var i = 0; i  < objThis.childNodes.length; i++)
	{
		if(objThis.childNodes.item(i).nodeName == "UL")			
		{							
			objThis.childNodes.item(i).style.display = "block";						
		}		
	}	
}

function hideSubMenu()
{								
	var objThis = this;	
	
	for(var i = 0; i  < objThis.childNodes.length; i++)			
	{
		if(objThis.childNodes.item(i).nodeName == "UL")
		{				
			objThis.childNodes.item(i).style.display = "none";			
			return;
		}			
	}	
}			


function initialiseMenu()
{
 	var objLICollection = document.body.getElementsByTagName("LI");		
	for(var i = 0; i < objLICollection.length; i++)
	{		
		var objLI = objLICollection[i];										
		for(var j = 0; j  < objLI.childNodes.length; j++)
		{
			if(objLI.childNodes.item(j).nodeName == "UL")
			{
				objLI.onmouseover=showSubMenu;
				objLI.onmouseout=hideSubMenu;
				
				for(var j = 0; j  < objLI.childNodes.length; j++)
				{
					if(objLI.childNodes.item(j).nodeName == "A")
					{					
						objLI.childNodes.item(j).className = "hassubmenu";								
					}
				}
			}
		}
	}
}

function menu(align){
var html='';
html+='<div id="menu-bar">';
//html+="<ul id='main_item1' style='margin-left:"+align+";'>";
//html+="<li><a href='index.php'>Home</a>";
//html+="</li>";
//html+="</ul>";
html+="<ul id='main_item2'>";
html+="<li><a href='about.php'>About</a>";
html+="</li>";
html+="</ul>";
html+="<ul id='main_item3'>";
html+="<li><a href='lcc_products.php'>Lantana Products</a>";
html+="</li>";
html+="</ul>";
html+="<ul id='main_item4'>";
html+="<li><a href='index.php' class='hassubmenu'>Resources</a>";
html+="<ul>";
html+="<li><a href='resources/Lantana_Craft_Training_Program_Protocol_April_2022.pdf' target='_blank'>Training Protocol</a></li>";
html+="<li><a href='resources/ATREE_Lantana_Craft_Center_LCC_catalogue.pdf' target='_blank'>Product Catalogue</a></li>";
html+="</ul>";
html+="</li>";
html+="</ul>";
html+="</div>";

$(".menu-sec").empty().append(html);
initialiseMenu();
}