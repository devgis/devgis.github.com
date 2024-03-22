---
layout: post
title: GIS地理信息系统
description: GIS地理信息系统相关内容
date: 2022-06-01 11:22:01
updatedate: 2022-06-01 11:22:01
---

- [Arcgis for js](#arcgis-for-js)
- [Arcgis for WPF,SL](#arcgis-for-wpfsl)
- [Arcgis Engine](#arcgis-engine)
- [MapXtreme](#mapxtreme)
- [高德地图](#高德地图)
- [百度地图](#百度地图)


## Arcgis for js

## Arcgis for WPF,SL

## Arcgis Engine

## MapXtreme

## 高德地图

> > 实现了基本得地图操作和控制

···
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>管线GIS系统</title>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <script src="https://cache.amap.com/lbs/static/es5.min.js"></script>
    <script src="https://webapi.amap.com/maps?v=2.0&key=c448a2c5e2b36c65bd02247c4d491a9f&&plugin=AMap.Scale,AMap.HawkEye,AMap.ToolBar,AMap.ControlBar,AMap.MouseTool"></script>
    <script src="https://a.amap.com/jsapi_demos/static/demo-center/js/demoutils.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery/jquery-3.5.1.min.js"></script>
    <style>
        html, body {
            height: 100%;
        }

        #container {
            height: 100%;
        }

        .input-card {
            width: 90px;
            left: 5px;
            bottom: 60px;
        }
    </style>
</head>
<body>
<div id="container"></div>
<div class='input-card'>
    <div class="input-item">
       <button class="btn" onclick="drawPolyline()" title="点击此按钮后，依次点击地图位置进行管线绘制" style="margin-bottom: 5px">绘制管线</button> 
    </div>
    <div class="input-item">
        <input type="checkbox" checked onclick="toggleScale(this)"/>比例尺
    </div>
    
    <div class="input-item">
        <input type="checkbox" checked id="toolbar" onclick="toggleToolBar(this)"/>工具条
    </div>
    
    <div class="input-item">
        <input type="checkbox" checked id="controlBar" onclick="toggleControlBar(this)"/>方向盘
    </div>
    
    <div class="input-item">
        <input type="checkbox" checked id="overview" onclick="toggleOverViewShow(this)"/>鹰眼
    </div>
</div>
<script>
    var scale = new AMap.Scale(),
    toolBar = new AMap.ToolBar({
        position: {
            top: '110px',
            right: '40px'
        }
    }),
    controlBar = new AMap.ControlBar({
        position: {
            top: '10px',
            right: '10px',
        }
    }),
    overView = new AMap.HawkEye({
        opened: false
    }),
    map = new AMap.Map("container", {
        //viewMode: '3D',
        zoom: 11,
        pitch: 30,
    });
    map.addControl(scale);
    map.addControl(toolBar);
    map.addControl(controlBar);
    map.addControl(overView);
    var mouseTool = new AMap.MouseTool(map);

    function toggleScale(checkbox) {
        if (checkbox.checked) {
            scale.show();
        } else {
            scale.hide();
        }
    }
    function toggleToolBar(checkbox) {
        if (checkbox.checked) {
            showToolBar();
        } else {
            hideToolBar();
        }
    }
    function toggleControlBar(checkbox) {
        if (checkbox.checked) {
            controlBar.show()
        } else {
            controlBar.hide()
        }
    }
    function toggleOverViewShow(checkbox) {
        if (checkbox.checked) {
            overView.show();
        } else {
            overView.hide();
        }
    }

    function showToolBar() {
        document.getElementById('toolbar').checked = true;
        toolBar.show();
    }
    function hideToolBar() {
        document.getElementById('toolbar').checked = false;
        toolBar.hide();
    }
    function showControlBar() {
        document.getElementById('controlBar').checked = true;
        controlBar.show();
    }
    function hideControlBar() {
        document.getElementById('controlBar').checked = false;
        controlBar.hide();
    }

    function drawPolyline() {
        mouseTool.polyline({
            strokeColor: '#80d8ff',
            strokeOpacity: 1,
            strokeWeight: 2,
            // 线样式还支持 'dashed'
            strokeStyle: "solid",
            // strokeStyle是dashed时有效
            // strokeDasharray: [10, 5],
        })
    }

    function queryallline() {
        $.get('/data.ashx?type=all', '', function (data) {
            //alert(JSON.stringify(data));
            //将获得得数据原路发回进行测试
            $.post("/data.ashx?type=add", JSON.stringify(data[0]), function (rs, textStatus) {
                alert(JSON.stringify(rs));
            }, "json");


            //$.ajax({
            //    url: "/data.ashx?type=add",
            //    type: "POST",
            //    data: JSON.stringify(data[0]),
            //    contentType: "application/json; charset=utf-8",
            //    dataType: "json",
            //    success: function (rs) {
            //        alert(JSON.stringify(rs));
            //    }
            //});
        })

        //$.ajax({
        //    type: "get",
        //    // url: "CommonFiles.aspx/DeleteFiles",
        //    url: "data.ashx?type=all",
        //    //data: "{Id:'" + deleteid + "'}",
        //    //data: { 'myjson': json },
        //    contentType: "application/json; charset=utf-8",
        //    dataType: 'json',
        //    success: function (data) {
        //        alert(JSON.stringify(data));
        //    }
        //});
    }

    queryallline();

    mouseTool.on('draw', function (event) {
        // event.obj 为绘制出来的覆盖物对象
        log.info(JSON.stringify(event.obj.getPath()));
        mouseTool.close(true);//关闭绘图，并清除覆盖物 此处需要重新获取数据重绘
    })
</script>
</body>
</html>
···

## 百度地图