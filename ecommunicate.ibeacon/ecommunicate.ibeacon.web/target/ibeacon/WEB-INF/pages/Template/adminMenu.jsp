<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="wrapper">
	<div class="header-top">
		<!-- start:navbar -->
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="container">
				<!-- start:navbar-header -->
				<div class="navbar-header">
					<a class="navbar-brand" href="index.html"><i
						class="fa fa-cubes"></i> <strong>Loadshedding</strong>Message<strong>.</strong></a>
				</div>
				<!-- end:navbar-header -->
				  <ul class="nav navbar-nav navbar-left top-menu">
                      <div class="navbar-header">
                       
            
          </div>
                        <!-- end dropdown 3 -->
                    </ul>
				<ul class="nav navbar-nav navbar-right top-menu">



					<!-- user login dropdown start-->
					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#">
							<span class="username">${sessionScope.systemUser.getUsername()}</span> <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<div class="log-arrow-up"></div>
						<%-- 	<li><a
								href="${pageContext.request.contextPath}/admin/profile"><i
									class=" fa fa-suitcase"></i>Profile</a></li>
 --%>
							<li><a href="${pageContext.request.contextPath}/logout"><i
									class="fa fa-key"></i> Log Out</a></li>
						</ul></li>
				</ul>
			</div>
		</nav>
		<!-- end:navbar -->
	</div>

	<!-- end:header -->
	

</div>

