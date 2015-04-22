<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript" src="http://openapi.map.naver.com/openapi/naverMap.naver?ver=2.0&key=508f223d1d23f8cd95a52c6d4b2a4fc4"></script>
<div id="map" style="border:1px solid #000;"></div>
<script type="text/javascript">
                var oSeoulCityPoint = new nhn.api.map.LatLng(37.4019274, 127.1081836);
                var defaultLevel = 11;
                var oMap = new nhn.api.map.Map(document.getElementById('map'), { 
                                                point : oSeoulCityPoint,
                                                zoom : defaultLevel,
                                                enableWheelZoom : true,
                                                enableDragPan : true,
                                                enableDblClickZoom : false,
                                                mapMode : 0,
                                                activateTrafficMap : false,
                                                activateBicycleMap : false,
                                                minMaxLevel : [ 1, 14 ],
                                                size : new nhn.api.map.Size(400, 240)           });
                var oSlider = new nhn.api.map.ZoomControl();
                oMap.addControl(oSlider);
                oSlider.setPosition({
                        top : 10,
                        left : 10
                });

                var oMapTypeBtn = new nhn.api.map.MapTypeBtn();
                oMap.addControl(oMapTypeBtn);
                oMapTypeBtn.setPosition({
                        bottom : 10,
                        right : 80
                });
                
                var oThemeMapBtn = new nhn.api.map.ThemeMapBtn();
                oThemeMapBtn.setPosition({
                        bottom : 10,
                        right : 10
                });
                oMap.addControl(oThemeMapBtn);

             /*
                var oBicycleGuide = new nhn.api.map.BicycleGuide(); // - ������ ���� ����
                oBicycleGuide.setPosition({
                        top : 10,
                        right : 10
                }); // - ������ ���� ��ġ ����
                oMap.addControl(oBicycleGuide);// - ������ ���ʸ� ������ �߰�.

                var oTrafficGuide = new nhn.api.map.TrafficGuide(); // - ���� ���� ����
                oTrafficGuide.setPosition({
                        bottom : 30,
                        left : 10
                });  // - ���� ���� ��ġ ����.
                oMap.addControl(oTrafficGuide); // - ���� ���ʸ� ������ �߰�.
                */
                
                var trafficButton = new nhn.api.map.TrafficMapBtn(); // - �ǽð� �������� ��ư ����
                trafficButton.setPosition({
                        bottom:10, 
                        right:150
                }); // - �ǽð� �������� ��ư ��ġ ����
                oMap.addControl(trafficButton);

                var oSize = new nhn.api.map.Size(28, 37);
                var oOffset = new nhn.api.map.Size(14, 37);
                var oIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);

                var oInfoWnd = new nhn.api.map.InfoWindow();
                oInfoWnd.setVisible(false);
                oMap.addOverlay(oInfoWnd);

                oInfoWnd.setPosition({
                        top : 20,
                        left :20
                });

                var oLabel = new nhn.api.map.MarkerLabel(); // - ��Ŀ �� ����.
                oMap.addOverlay(oLabel); // - ��Ŀ �� ������ �߰�. �⺻�� ���� ������ �ʴ� ���·� �߰���.

                oInfoWnd.attach('changeVisible', function(oCustomEvent) {
                        if (oCustomEvent.visible) {
                                oLabel.setVisible(false);
                        }
                });
                
                var oPolyline = new nhn.api.map.Polyline([], {
                        strokeColor : '#f00', // - ���� ����
                        strokeWidth : 5, // - ���� �β�
                        strokeOpacity : 0.5 // - ���� ����
                }); // - polyline ����, ù��° ���ڴ� ���� �׷��� ���� ��ġ. ����� ����.
                oMap.addOverlay(oPolyline); // - ������ ���� �߰���.

                oMap.attach('mouseenter', function(oCustomEvent) {

                        var oTarget = oCustomEvent.target;
                        // ��Ŀ���� ���콺 �ö󰣰Ÿ�
                        if (oTarget instanceof nhn.api.map.Marker) {
                                var oMarker = oTarget;
                                oLabel.setVisible(true, oMarker); // - Ư�� ��Ŀ�� �����Ͽ� �ش� ��Ŀ�� title�� �����ش�.
                        }
                });

                oMap.attach('mouseleave', function(oCustomEvent) {

                        var oTarget = oCustomEvent.target;
                        // ��Ŀ������ ���콺 �����Ÿ�
                        if (oTarget instanceof nhn.api.map.Marker) {
                                oLabel.setVisible(false);
                        }
                });

                oMap.attach('click', function(oCustomEvent) {
                        var oPoint = oCustomEvent.point;
                        var oTarget = oCustomEvent.target;
                        oInfoWnd.setVisible(false);
                        // ��Ŀ Ŭ���ϸ�
                        if (oTarget instanceof nhn.api.map.Marker) {
                                // ��ħ ��Ŀ Ŭ���ѰŸ�
                                if (oCustomEvent.clickCoveredMarker) {
                                        return;
                                }
                                // - InfoWindow �� �� ������ setContent �� �����Ӱ� ���� �� �ֽ��ϴ�. �ܺ� css�� �̿��� �� ������, 
                                // - �ܺ� css�� ����� class�� �̿��ϸ� �ش� class�� ��Ÿ���� �ٷ� ������ �� �ֽ��ϴ�.
                                // - ��, DIV �� position style �� absolute �� �Ǹ� �ȵǸ�, 
                                // - absolute �� ��� autoPosition �� �������� �ʽ��ϴ�. 
                                oInfoWnd.setContent('<DIV style="border-top:1px solid; border-bottom:2px groove black; border-left:1px solid; border-right:2px groove black;margin-bottom:1px;color:black;background-color:white; width:auto; height:auto;">'+
                                        '<span style="color: #000000 !important;display: inline-block;font-size: 12px !important;font-weight: bold !important;letter-spacing: -1px !important;white-space: nowrap !important; padding: 2px 5px 2px 2px !important">' + 
                                        'Hello World <br /> ' + oTarget.getPoint()
                                        +'<span></div>');
                                oInfoWnd.setPoint(oTarget.getPoint());
                                oInfoWnd.setPosition({right : 15, top : 30});
                                oInfoWnd.setVisible(true);
                                oInfoWnd.autoPosition();
                                return;
                        }
                        var oMarker = new nhn.api.map.Marker(oIcon, { title : '��Ŀ : ' + oPoint.toString() });
                        oMarker.setPoint(oPoint);
                        oMap.addOverlay(oMarker);

                        var aPoints = oPolyline.getPoints(); // - ���� ���������� �̷�� ���� �����ͼ� �迭�� ����.
                        aPoints.push(oPoint); // - �߰��ϰ��� �ϴ� ���� �߰��Ͽ� �迭�� ������.
                        oPolyline.setPoints(aPoints); // - �ش� �������ο� �迭�� ����� ���� �߰���
                });
        </script>
</body>
</html>