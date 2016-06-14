

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%><html>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute>
</title>

<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.css" rel="stylesheet">
<!--external css-->
<link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/css/style-responsive.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	
			<tiles:insertAttribute name="body"></tiles:insertAttribute>
		
		<%-- <tr>
			<td colspan="2" align="center">
			<tiles:insertAttribute name="footer"></tiles:insertAttribute></td>
		</tr> --%>

	<script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

	<!--BACKSTRETCH-->
	<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/jquery.backstretch.min.js"></script>
	<script>
		$.backstretch("${pageContext.request.contextPath}/assets/img/login-bg.jpg", {
			speed : 500
		});
	</script>
</body>
</html>