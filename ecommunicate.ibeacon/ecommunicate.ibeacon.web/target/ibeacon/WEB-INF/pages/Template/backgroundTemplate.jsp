<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%><html>
<html class="ng-scope" ng-app="helloApp">
<head>
	<title>Loadshedding</title>
	    <script
	src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.20/angular.min.js"></script>
	    <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.15/angular-animate.js"></script>
	
		<script src="http://code.jquery.com/jquery.min.js"></script>
	<link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Theme2/css/font-awesome.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Theme2/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Theme2/css/bootstrap-reset.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/Theme2/css/style.css">
    <!-- css for this page -->
    <link href="${pageContext.request.contextPath}/Theme2/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Theme2/css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Theme2/css/owl.theme.css">
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Theme2/css/owl.transitions.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Theme2/css/customcss.css">
    
		    <link href="${pageContext.request.contextPath}/Theme2/assets/advanced-datatable/media/css/demo_page.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/Theme2/assets/advanced-datatable/media/css/demo_table.css" rel="stylesheet" />
    <link rel="${pageContext.request.contextPath}/Theme2/stylesheet" href="assets/data-tables/DT_bootstrap.css" />
 
</head>
<body class="ng-scope" ng-controller="HttpController">



<div>
		<tiles:insertAttribute name="header"></tiles:insertAttribute>
	</div>

	<div></div>
	<div>
	
	
		<tiles:insertAttribute name="body"></tiles:insertAttribute>
	</div>
	
<%-- 	<div><tiles:insertAttribute name="footer"></tiles:insertAttribute></div> --%>
	


	<script src="${pageContext.request.contextPath}/Theme2/js/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/Theme2/js/bootstrap.min.js"></script>

    <!-- javascript for Srikandi admin -->
    <script src="${pageContext.request.contextPath}/Theme2/js/themes.js"></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/jquery.scrollTo.min.js"></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/jquery.nicescroll.js"></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/jquery.sparkline.js" type="text/javascript"></script>
    <script class="include" type="text/javascript" src="${pageContext.request.contextPath}/Theme2/js/jquery.dcjqaccordion.2.7.min.js"></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/respond.min.js" ></script>
	<!-- end:javascript -->

    <!-- start:javascript for this page -->
    
    <script src="${pageContext.request.contextPath}/Theme2/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/owl.carousel.js" ></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/jquery.customSelect.min.js" ></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/sparkline-chart.js"></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/easy-pie-chart.js"></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/count.js"></script>
  
    

    <!-- javascript for Srikandi admin -->
	<!-- end:javascript -->

    <!-- jquery for this page -->
    <script src="${pageContext.request.contextPath}/Theme2/js/jquery.stepy.js"></script>

    <script>

        //step wizard

        $(function() {
            $('#default').stepy({
                backLabel: 'Previous',
                block: true,
                nextLabel: 'Next',
                titleClick: true,
                titleTarget: '.stepy-tab'
            });
        });
    </script>
    
  
    <script>
        //owl carousel
        $(document).ready(function() {
            $("#owl-demo").owlCarousel({
                navigation : true,
                slideSpeed : 300,
                paginationSpeed : 400,
                singleItem : true,
                autoPlay:true
            });
        });

        //custom select box

        $(function(){
            $('select.styled').customSelect();
        });

        if ($(".custom-bar-chart")) {
        $(".bar").each(function () {
            var i = $(this).find(".value").html();
            $(this).find(".value").html("");
            $(this).find(".value").animate({
                height: i
            }, 2000)
        })
    }
    </script>
    <!-- end:javascript for this page -->

</body>
</html>	