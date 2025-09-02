<!--
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
function uclick()
{
var message="Sorry dude ! you cannot save images...";
function click(e) {
if (document.all) {
if (event.button==1||event.button==2||event.button==3) {
alert(message);
return false;
}
}
if (document.layers) {
if (e.which == 3) {
alert(message);
return false;
}
}
}
if (document.layers) {
document.captureEvents(Event.MOUSEDOWN);
}
pic1.onmousedown=uclick;
pic2.onmousedown=uclick;
}