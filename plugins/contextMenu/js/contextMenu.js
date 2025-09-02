var contextMenuManager = {
    contextMenuClass: 'contextMenuPlugin',
    gutterLineClass: 'gutterLine',
    headerClass: 'header',
    seperatorClass: 'divider',
    title: null,
    queriedLayers:null,
    menuOptionsConfig:{
        'Polygon':     [
            {label:'Centroid',icon:"resources/img/centroid.png",name:"centroid"},
            {label:'Area',icon:"resources/img/area.png", name:"area"},
            {label:'Search',icon:"resources/img/search.png", name:"search"},
            {label:'Remove',icon:"resources/img/removeFeature.png", name:"remove"},
            {label:'Cancel',icon:"resources/img/cancel.png", name:"cancel"}
        ],
        'MultiPolygon':     [
            {label:'Centroid',icon:"resources/img/centroid.png",name:"centroid"},
            {label:'Area',icon:"resources/img/area.png", name:"area"},
            {label:'Search',icon:"resources/img/search.png", name:"search"},
            {label:'Remove',icon:"resources/img/removeFeature.png", name:"remove"},
            {label:'Cancel',icon:"resources/img/cancel.png", name:"cancel"}
        ],
        'Line':     [
            {label:'Length',icon:"resources/img/length.png",name:"length"},
            {label:'Search',icon:"resources/img/search.png", name:"search"},
            {label:'Remove',icon:"resources/img/removeFeature.png", name:"remove"},
            {label:'Cancel',icon:"resources/img/cancel.png", name:"cancel"}
        ],
        'PolyLine':     [
            {label:'Length',icon:"resources/img/length.png",name:"length"},
            {label:'Search',icon:"resources/img/search.png", name:"search"},
            {label:'Remove',icon:"resources/img/removeFeature.png", name:"remove"},
            {label:'Cancel',icon:"resources/img/cancel.png", name:"cancel"}
        ],
        'Point':[
            {label:'Search',icon:"resources/img/search.png", name:"search"},
            {label:'Remove',icon:"resources/img/removeFeature.png", name:"remove"},
            {label:'Cancel',icon:"resources/img/cancel.png", name:"cancel"}
        ]
    },
    showContextMenu:function(feature,e){
        var selectCtrl = map.getControlsBy("id",feature._lastHighlighter.replace("hover","select"))[0];
        var geometryType = feature.geometry.CLASS_NAME.replace('OpenLayers\.Geometry\.',"");
        var menuItems = contextMenuManager.menuOptionsConfig[geometryType];
        var menu = $('<ul class="' + contextMenuManager.contextMenuClass + '"><div class="' + contextMenuManager.gutterLineClass + '"></div></ul>').appendTo(document.body);
        for(key  in menuItems){
            var item =  menuItems[key];
            if (item) {
                var rowCode = '<li><a href="#" name = "'+item.name+'"><span></span></a></li>';
                var row = $(rowCode).appendTo(menu);
                if(item.icon){
                  var icon = $('<img>');
                  icon.attr('src', item.icon);
                  icon.insertBefore(row.find('span'));
                }
                row.find('span').text(item.label);
               // row.find('a').click(function(){ item.action(e); });
            } else {
                $('<li class="' + contextMenuManager.seperatorClass + '"></li>').appendTo(menu);
            }
        }
        var left = e.pageX + 5, /* nudge to the right, so the pointer is covering the title */
            top = e.pageY;
        if (top + menu.height() >= $(window).height()) {
            top -= menu.height();
        }
        if (left + menu.width() >= $(window).width()) {
            left -= menu.width();
        }
    
        // Create and show menu
        menu.css({zIndex:1000001, left:left, top:top})
          .bind('contextmenu', function() { return false; });
    
        // Cover rest of page with invisible div that when clicked will cancel the popup.
        var bg = $('<div></div>')
          .css({left:0, top:0, width:'100%', height:'100%', position:'absolute', zIndex:1000000})
          .appendTo(document.body)
          .bind('contextmenu click', function() {
            // If click or right click anywhere else on page: remove clean up.
            selectCtrl.unselect(feature);//unhighlight/unselect the feature,if highlighted/selected
            contextMenuManager.removeMenu(bg,menu);
            return false;
          });
    
        // When clicking on a link in menu: clean up (in addition to handlers on link already)
        menu.find('a').click(function() {
            contextMenuManager.removeHighlightingAndSelection(feature);
            var name = $(this).attr('name');
            switch(name){
                case 'centroid':
                    contextMenuManager.showCentroid(feature);
                    break;
                case 'area':
                    contextMenuManager.showArea(feature);
                    break;
                case 'length':
                    contextMenuManager.showLength(feature);
                    break;
                case 'search':
                    contextMenuManager.showFeatureSearchWindow(feature);
                    break;
                case 'remove':
                    contextMenuManager.removeVectorFeature(feature);
                    break;
                case 'cancel':
                    contextMenuManager.removeMenu(bg,menu);
                    break;
                default:
                    break;
            }
            contextMenuManager.removeMenu(bg,menu);
        });
        menu.show();
    },
    removeHighlightingAndSelection:function(feature){
        var selectCtrl = map.getControlsBy("id",feature._lastHighlighter.replace("hover","select"))[0];
        var highlightCtrl = map.getControlsBy("id",feature._lastHighlighter)[0];
        highlightCtrl.unhighlight(feature);
        selectCtrl.unselect(feature);
    },
    removeMenu:function(bg,menu){
        bg.remove();
        menu.remove();
    },
    showCentroid:function(feature){
        var markerLayer = map.getLayersByName("CentroidMarkers")[0];
        var fidInteger = feature.fid.split("\.")[1];
        var tableName   =  feature.fid.split("\.")[0];
        if(typeof(markerLayer) == 'undefined'){
            markerLayer = new OpenLayers.Layer.Vector( "CentroidMarkers" );
            map.addLayer(markerLayer);
        }else{
            $.each(markerLayer.features,function(){
                if(this.fid == "marker-"+tableName+"-"+fidInteger){
                    markerLayer.removeFeatures(this);
                }
            });
        }
         // create a point feature
        var centroidPoint = feature.geometry.getCentroid();
        var markerStyle = OpenLayers.Util.extend({}, OpenLayers.Feature.Vector.style['default']);
        markerStyle.externalGraphic = 'resources/img/marker.png';
        markerStyle.graphicHeight = 24; 
        markerStyle.graphicWidth = 24;
        markerStyle.graphicOpacity =1;
        
        var markerFeature = new OpenLayers.Feature.Vector(centroidPoint,null,markerStyle);
        markerFeature.fid = "marker-"+tableName+"-"+fidInteger;
        markerLayer.addFeatures(markerFeature);
    },
    showArea:function(feature){
        var fidInteger  = feature.fid.split("\.")[1];
        var tableName   =  feature.fid.split("\.")[0];
        var popUpId    = 'popup-'+tableName+'-'+fidInteger;
        
        $.each(map.popups,function(){
            if(this.contextMenuTriggered == true){
                map.removePopup(this);
            }
        });
        var popup = new OpenLayers.Popup.FramedCloud(
            popUpId,
            feature.geometry.getBounds().getCenterLonLat(),
            null,
            "<div style='margin-top:10px;font:normal 11px Arial;'>Area: " + Math.round((feature.geometry.getArea())*7) + " Sq ft</div>",
            null,
            true,
            null
        );
        popup.panMapIfOutOfView = true;
	popup.keepInMap = true;
        popup.minSize = new OpenLayers.Size(100, 100);
        popup.contextMenuTriggered = true;//custom attribute
        map.addPopup(popup);
    },
    showLength:function(feature){
        var fidInteger  = feature.fid.split("\.")[1];
        var tableName   =  feature.fid.split("\.")[0];
        var popUpId    = 'popup-'+tableName+'-'+fidInteger;
        
        $.each(map.popups,function(){
            if(this.contextMenuTriggered == true){
                map.removePopup(this);
            }
        });
        var popup = new OpenLayers.Popup.FramedCloud(
            popUpId,
            feature.geometry.getBounds().getCenterLonLat(),
            null,
            "<div style='margin-top:15px;font:normal 11px Arial;'>Area: " + Math.round((feature.geometry.getLength())*7) + " Sq ft</div>",
            null,
            true,
            null
        );
        popup.panMapIfOutOfView = true;
	popup.keepInMap = true;
        popup.minSize = new OpenLayers.Size(100, 100);
        popup.contextMenuTriggered = true;//custom attribute
        map.addPopup(popup);
    },
    removeVectorFeature:function(feature){
        feature.layer.removeFeatures([feature]);
    },
    showFeatureSearchWindow:function(feature){
        clearAllModalWindows();
        $('#featureSearchContainer').html( '<table id="featureSearchTable"  cellpadding="0" cellspacing="0" border="0" class="display" ></table>' );
        $('#featureSearchTable').dataTable({
            "bProcessing": true,
            "bServerSide": true,
            "sAjaxSource": coreConfig.app.url,
            "bDestroy": true, 
            "bFilter":true,
            "bInfo":true,
            "bLengthChange": true,
            "iDisplayLength":10,
            "sDom": 'frtip<"featureSearchTableTools">',
            "oLanguage": {
                "sSearch": "Search Layers (Input Titles):",
                "sInfoFiltered":""
            },
            "aoColumnDefs": [
                { "bVisible":  false, "aTargets": [ 0 ] }
            ],
            "aoColumns": [
                { "sTitle": "Table"   },
                { "sTitle": "Layer"}
            ],
            "fnServerParams": function ( aoData ) {
                aoData.push(
                    {name:"action",value:"getLayersForFeatureSearch"}
                );
            },
            "fnInitComplete":function(settings,json){
                $('#featureSearchContainer').modal({
                    modal:true,
                    opacity:0,
                    containerCss:{
                        width:400
                    },
                    onShow:function(){
                        var modalMaxHeight = 360;
                        var contentHeight = $('#featureSearchContainer').height();
                        if((contentHeight+35) < modalMaxHeight){
                            $('#simplemodal-container').height(contentHeight+35);
                        }else{
                            $('#simplemodal-container').height(modalMaxHeight);
                        }
                        $('.simplemodal-wrap').niceScroll();
                        $('#simplemodal-container').draggable( {
                            start: function( event, ui ) {
                                $(".simplemodal-wrap").getNiceScroll().hide();
                            },
                            stop:function(evt,ui){
                                $(".simplemodal-wrap").getNiceScroll().show();
                            }
                        });
                        if($(".featureSearchTableTools").length > 0){
                            $(".featureSearchTableTools").attr("align","center");
                            $(".featureSearchTableTools").append(
                                "<input id= 'searchFeature' type = 'button' style='margin:0 auto;' value= 'Search'>"    
                            );
                        }
                        $("#searchFeature").click(function(){
                            contextMenuManager.doContextMenuSearchAndRenderResults(feature);    
                        })
                    },
                    onClose:function(){
                        //the following statements should execute in the following sequence only
                        $('#featureSearchTable').dataTable().fnDestroy(true);
                        $('#featureSearchContainer').empty();
                        $.modal.close();
                    }
                });
            },
            //function on any data content change,like sorting,paging,etc
            "fnDrawCallback": function(oSettings ) {
                $(".simplemodal-wrap").getNiceScroll().remove();
                if($('.simplemodal-wrap').length > 0){
                    var modalMaxHeight = 360;
                    var contentHeight = $('#featureSearchContainer').height();
                    if((contentHeight+35) < modalMaxHeight){
                        $('#simplemodal-container').height(contentHeight+35)
                    }else{
                        $('#simplemodal-container').height(modalMaxHeight);
                    }
                }
                $(".simplemodal-wrap").niceScroll();
            }
        });
    },
    doContextMenuSearchAndRenderResults:function(feature){
        var getFeatureControl = map.getControlsBy('id', 'WFSGetFeatureControl')[0];
        var protocol = getFeatureControl.protocol;
        var layerList = new Array();
        var selectedRows = $('#featureSearchTable tr.rowSelected :first-child');
        $.each(selectedRows,function(){
            var featureSearchTable = $('#featureSearchTable').dataTable();
            var position = featureSearchTable.fnGetPosition(this); 
            var tableName = featureSearchTable.fnGetData(position[0])[0];
            layerList.push(tableName);
        });
        if(layerList.length === 0){
            alert("Error:No Layer Selected");
            return;
        }
        protocol.setFeatureType(layerList);
        getFeatureControl.request(feature.geometry);
        clearAllModalWindows();
        updateQueryableLayers();
    }
}