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
	<!-- start:header -->
	<div id="header">
		<div class="overlay">
			<nav class="navbar" role="navigation">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="btn-block btn-drop navbar-toggle"
							data-toggle="collapse" data-target=".navbar-ex1-collapse">
							<strong>MENU</strong>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">
						   <li class="active" >
                                    <a href="${pageContext.request.contextPath}/admin/home">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-home fa-3x"></i><br>
                                           Home
                                        </div>
                                    </a>
                                </li>
						
						
						<%-- 
							<li class="value"><b><a
											href="${pageContext.request.contextPath}/admin/viewDashboard"
											style="color: blue"> <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-home fa-3x"></i><br>Dashboard
											<br>
											</div>
											
											</a></b></li>
								 --%>
								
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#">
									<div class="text-center" style="font-size: 12px">
										<i class="fa fa-users fa-3x"></i><br>  Manage User's
										<span class="caret"></span>
									</div>
							</a>

								<ul class="dropdown-menu" role="menu">
									<li><a
										href="${pageContext.request.contextPath}/admin/addUser"><i
											class="fa fa-plus"></i> Add User</a></li>
									<%-- <li><a
										href="${pageContext.request.contextPath}/admin/viewUSer"><i
											class="fa fa-search"></i>View All Users</a></li>
								
													

								 --%>
								</ul></li>
								
						
										
										 <li>
                                    <a href="${pageContext.request.contextPath}/admin/importExcel">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                           Manage Area Codes
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/errorMessage">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                           Manage Error Messages
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/url">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                           Manage URLs
                                        </div>
                                    </a>
                                </li>
                                
                                 <li>
                                    <a href="${pageContext.request.contextPath}/admin/importLoadshedExcel">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                           Manage Loashed Schedule
                                        </div>
                                    </a>
                                </li>
                                
                                 <li>
                                    <a href="${pageContext.request.contextPath}/admin/simulator">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                             Test Api
                                        </div>
                                    </a>
                                </li>
                                
                                
                                 <li>
                                    <a href="${pageContext.request.contextPath}/admin/outputReport">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                          Output Message Report
                                        </div>
                                    </a>
                                </li>
                                
                                <li>
                                    <a href="${pageContext.request.contextPath}/admin/replyReport">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                          Message Reply Report
                                        </div>
                                    </a>
                                </li>
                                  <li>
                                    <a href="${pageContext.request.contextPath}/admin/provinceAlias">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                          Manage Province Alias
                                        </div>
                                    </a>
                                </li>
                                 <li>
                                    <a href="${pageContext.request.contextPath}/admin/viewSubscriptionReport">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                          Subscription Report
                                        </div>
                                    </a>
                                </li>
                                
                              
                                    <li>
                                    <a href="${pageContext.request.contextPath}/admin/viewSubscriptionRequest">
                                        <div class="text-center" style="font-size: 12px">
                                            <i class="fa fa-envelope fa-3x"></i><br>
                                           Subscription Requests
                                        </div>
                                    </a>
                                </li>






						</ul>




					</div>
					<!-- /.navbar-collapse -->
				</div>
			</nav>
		</div>
	</div>
	<!-- end:header -->
	

</div>

