<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- start:wrapper -->

<!-- start:main -->
<div class="container">
	<div id="main">
		<!-- start:breadcrumb -->
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/admin/home">Home</a></li>

		</ol>
		<!-- end:breadcrumb -->

		<div class="row" id="home-content">
			<div class="col-lg-8">
				<!-- start:state overview -->
				<div class="row state-overview">
					<div class="col-lg-6 col-sm-6">
						<section class="panel">

							<div class="symbol red" style="color: white;">
								<h4>
									<b> Home</b>
								</h4>
							</div>
							<div class="value" style="text-align: left; font-size: 12px">

								<ul>

									<li><b><a
											href="${pageContext.request.contextPath}/admin/home"
											style="color: blue"><u> Home</u></a></b></li>
											
											<%-- <li><b><a
											href="${pageContext.request.contextPath}/admin/rejectedBatch"
											style="color: blue"><u> Rejected Batch</u></a></b></li> --%>
								</ul>
							</div>
							
							
									</div>
							
							
							
							<%-- 	<div class="value" style="text-align: left; font-size: 12px">

								<ul>

									<li><b><a
											href="${pageContext.request.contextPath}/admin/unsubscribeNumber"
											style="color: blue"><u> Home</u></a></b></li>
											
											<li><b><a
											href="${pageContext.request.contextPath}/admin/rejectedBatch"
											style="color: blue"><u> Rejected Batch</u></a></b></li>
								</ul>
							</div> --%>
						</section>
					</div>



				

					<%-- <div class="col-lg-6 col-sm-6">
						<section class="panel">
							<div class="symbol red" style="color: white;">
								<h4>
									<b> MANAGE Users</b>
								</h4>
							</div>
							<div class="value" style="text-align: left; font-size: 12px">

								<ul style="position: relative; top: -21">
									<li><b><a style="color: blue"
											href="${pageContext.request.contextPath}/admin/unblockAccount"
											style="color:blue"><u>Unblock Account</u></a></li>
									<li><b><a style="color: blue"
											href="${pageContext.request.contextPath}/admin/addClient"
											style="color:blue"><u>Add Reseller</u></a></li>
									<li><b><a style="color: blue"
											href="${pageContext.request.contextPath}/admin/addClientDetailsToUser"
											style="color:blue"><u>Add Child</u></a></li>
									<li><b><a
											href="${pageContext.request.contextPath}/admin/viewClient"
											style="color: blue"><u>View Resellers</u></a></li>

								</ul>
							</div> --%>
						<!-- </section>
					</div> -->


					
				
					<!-- <div class="col-lg-6 col-sm-6">
						<section class="panel">
							<div class="symbol red" style="color: white;">
								<h4>
									<b>Import</b>
								</h4>
							</div>
							<div class="value" style="text-align: left; font-size: 12px">

								<ul>
									<li><b><a href="viewAllSmsc" style="color: blue"><u>Manage
													SMSC</u></a></li>

									<li><a href="viewMNOPrefix" style="color: blue"><u>Manage
												Mno Prefix</u></a></li>
								</ul>
							</div>
						</section>
					</div>
					 -->
					
				
				</div>
				<!-- end:state overview -->

				<!--custom chart start-->
				<!--      <div class="border-head">
                            <h3><strong>Graph</strong> Earning</h3>
                        </div>
                        <div class="custom-bar-chart">
                            <ul class="y-axis">
                                <li><span>100</span></li>
                                <li><span>80</span></li>
                                <li><span>60</span></li>
                                <li><span>40</span></li>
                                <li><span>20</span></li>
                                <li><span>0</span></li>
                            </ul>
                            <div class="bar">
                                <div class="title">JAN</div>
                                <div class="value tooltips" data-original-title="80%" data-toggle="tooltip" data-placement="top">60%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">FEB</div>
                                <div class="value tooltips" data-original-title="50%" data-toggle="tooltip" data-placement="top">80%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">MAR</div>
                                <div class="value tooltips" data-original-title="40%" data-toggle="tooltip" data-placement="top">20%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">APR</div>
                                <div class="value tooltips" data-original-title="55%" data-toggle="tooltip" data-placement="top">65%</div>
                            </div>
                            <div class="bar">
                                <div class="title">MAY</div>
                                <div class="value tooltips" data-original-title="20%" data-toggle="tooltip" data-placement="top">90%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">JUN</div>
                                <div class="value tooltips" data-original-title="39%" data-toggle="tooltip" data-placement="top">49%</div>
                            </div>
                            <div class="bar">
                                <div class="title">JUL</div>
                                <div class="value tooltips" data-original-title="75%" data-toggle="tooltip" data-placement="top">55%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">AUG</div>
                                <div class="value tooltips" data-original-title="45%" data-toggle="tooltip" data-placement="top">35%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">SEP</div>
                                <div class="value tooltips" data-original-title="50%" data-toggle="tooltip" data-placement="top">57%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">OCT</div>
                                <div class="value tooltips" data-original-title="42%" data-toggle="tooltip" data-placement="top">43%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">NOV</div>
                                <div class="value tooltips" data-original-title="60%" data-toggle="tooltip" data-placement="top">60%</div>
                            </div>
                            <div class="bar ">
                                <div class="title">DEC</div>
                                <div class="value tooltips" data-original-title="90%" data-toggle="tooltip" data-placement="top">90%</div>
                            </div>
                        </div>
                        custom chart end
                        start:timeline
                        <section class="panel">
                            <div class="panel-body">
                                <div class="text-center mbot30">
                                    <h3 class="timeline-title">Ini Timeline</h3>
                                    <p class="t-info">Wiki kie project timeline</p>
                                </div>

                                <div class="timeline">
                                    <article class="timeline-item">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow"></span>
                                                    <span class="timeline-icon red"></span>
                                                    <span class="timeline-date">08:25 am</span>
                                                    <h1 class="red">12 July | Sunday</h1>
                                                    <p>Lorem ipsum dolor sit amet consiquest dio</p>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article class="timeline-item alt">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow-alt"></span>
                                                    <span class="timeline-icon green"></span>
                                                    <span class="timeline-date">10:00 am</span>
                                                    <h1 class="green">10 July | Wednesday</h1>
                                                    <p><a href="#">Jonathan Smith</a> added new milestone <span><a href="#" class="green">ERP</a></span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article class="timeline-item">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow"></span>
                                                    <span class="timeline-icon blue"></span>
                                                    <span class="timeline-date">11:35 am</span>
                                                    <h1 class="blue">05 July | Monday</h1>
                                                    <p><a href="#">Anjelina Joli</a> added new album <span><a href="#" class="blue">PARTY TIME</a></span></p>
                                                    <div class="album">
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-1.jpg">
                                                        </a>
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-2.jpg">
                                                        </a>
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-3.jpg">
                                                        </a>
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-1.jpg">
                                                        </a>
                                                        <a href="#">
                                                            <img alt="" src="img/sm-img-2.jpg">
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article class="timeline-item alt">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow-alt"></span>
                                                    <span class="timeline-icon purple"></span>
                                                    <span class="timeline-date">3:20 pm</span>
                                                    <h1 class="purple">29 June | Saturday</h1>
                                                    <p>Lorem ipsum dolor sit amet consiquest dio</p>
                                                    <div class="notification">
                                                        <i class=" fa fa-exclamation-sign"></i> New task added for <a href="#">Denial Collins</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                    <article class="timeline-item">
                                        <div class="timeline-desk">
                                            <div class="panel">
                                                <div class="panel-body">
                                                    <span class="arrow"></span>
                                                    <span class="timeline-icon light-green"></span>
                                                    <span class="timeline-date">07:49 pm</span>
                                                    <h1 class="light-green">10 June | Friday</h1>
                                                    <p><a href="#">Jonatha Smith</a> added new milestone <span><a href="#" class="light-green">prank</a></span> Lorem ipsum dolor sit amet consiquest dio</p>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                                <div class="clearfix">&nbsp;</div>
                            </div>
                        </section>
            
				<!-- start:user info -->
				<div class="col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<header class="panel-title">
							<div class="text-center">
								<strong>Profile</strong> Info <strong>.</strong>
							</div>
						</header>
					</div>     
					<div class="panel-body">
						<div class="text-center" id="author">
							<h3>${sessionScope.systemUser.getUsername() }</h3>
							Welcome Admin </br></br>
							
						</div>
					</div>      
			</div>
			
					
				</div>
				<!-- end:user info -->
				<!-- start:new earning -->
				<!--     <div class="panel terques-chart">
                            <div class="panel-body chart-texture">
                                <div class="chart">
                                    <div class="heading">
                                        <span>Senin</span>
                                        <strong>$ 67,00 | 25%</strong>
                                    </div>
                                    <div class="sparkline" data-type="line" data-resize="true" data-height="75" data-width="90%" data-line-width="1" data-line-color="#fff" data-spot-color="#fff" data-fill-color="" data-highlight-line-color="#fff" data-spot-radius="4" data-data="[200,135,667,333,526,996,564,123,890,564,455]"></div>
                                </div>
                            </div>
                            <div class="chart-tittle">
                                <span class="title">New Earning</span>
                                <span class="value">
                                    <a href="#" class="active">Market</a>
                                    |
                                    <a href="#">Referal</a>
                                    |
                                    <a href="#">Online</a>
                                </span>
                            </div>
                        </div>
                        end:new earning

                        start:total earning
                        <div class="panel green-chart">
                            <div class="panel-body">
                                <div class="chart">
                                    <div class="heading">
                                        <span>June</span>
                                        <strong>12 Days | 85%</strong>
                                    </div>
                                    <div id="barchart"></div>
                                </div>
                            </div>
                            <div class="chart-tittle">
                                <span class="title">Total Earning</span>
                                <span class="value">$, 96,23,123</span>
                            </div>
                        </div>
                        end:total earning

                        start:user info table
                        <section class="panel">
                            <div class="panel-body">
                                <a href="#" class="task-thumb">
                                    <img src="img/user/avatar-1.jpg" alt="">
                                </a>
                                <div class="task-thumb-details">
                                    <h1><a href="#">Chef Marinka</a></h1>
                                    <p>Senior Chef Master</p>
                                </div>
                            </div>
                            <table class="table table-hover personal-task">
                                <tbody>
                                    <tr>
                                        <td>
                                            <i class=" fa fa-tasks"></i>
                                        </td>
                                        <td>New Task Issued</td>
                                        <td> 02</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-exclamation-triangle"></i>
                                        </td>
                                        <td>Task Pending</td>
                                        <td> 14</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class="fa fa-envelope"></i>
                                        </td>
                                        <td>Inbox</td>
                                        <td> 45</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <i class=" fa fa-bell-o"></i>
                                        </td>
                                        <td>New Notification</td>
                                        <td> 09</td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                        end:user info table
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        revenue start
                        <section class="panel revenue">
                            <div class="revenue-head">
                                <span>
                                    <i class="fa fa-bar-chart-o"></i>
                                </span>
                                <h3>Revenue</h3>
                                <span class="rev-combo pull-right">
                                    June 2013
                                </span>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-6 col-sm-6 text-center">
                                        <div class="easy-pie-chart">
                                            <div class="percentage" data-percent="35"><span>35</span>%</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-sm-6">
                                        <div class="chart-info chart-position">
                                            <span class="increase"></span>
                                            <span>Revenue Increase</span>
                                        </div>
                                        <div class="chart-info">
                                            <span class="decrease"></span>
                                            <span>Revenue Decrease</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer revenue-foot">
                                <ul>
                                    <li class="first active">
                                        <a href="javascript:;">
                                            <i class="fa fa-bullseye"></i>
                                            Graphical
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class=" fa fa-th-large"></i>
                                            Tabular
                                        </a>
                                    </li>
                                    <li class="last">
                                        <a href="javascript:;">
                                            <i class=" fa fa-align-justify"></i>
                                            Listing
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </section>
                        revenue end
                    </div>
                    <div class="col-lg-8">
                        work progress start
                        <section class="panel">
                            <div class="panel-body progress-panel">
                                <div class="task-progress">
                                    <h1>Work Progress</h1>
                                    <p>Chef Marink</p>
                                </div>
                                <div class="task-option">
                                    <select class="btn btn-default">
                                        <option>Chef Marinka</option>
                                        <option>Chef Juna</option>
                                        <option>Chef Aldi</option>
                                    </select>
                                </div>
                            </div>
                            <table class="table table-hover personal-task">
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            Target Sell
                                        </td>
                                        <td>
                                            <span class="badge bg-important">75%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress1"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>
                                            Product Delivery
                                        </td>
                                        <td>
                                            <span class="badge bg-success">43%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress2"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>
                                            Payment Collection
                                        </td>
                                        <td>
                                            <span class="badge bg-info">67%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress3"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>
                                            Work Progress
                                        </td>
                                        <td>
                                            <span class="badge bg-warning">30%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress4"></div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>
                                            Delivery Pending
                                        </td>
                                        <td>
                                            <span class="badge bg-primary">15%</span>
                                        </td>
                                        <td>
                                            <div id="work-progress5"></div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </section>
                        work progress end
                    </div>
                </div>
            </div> -->
			</div>
			<!-- end:main -->

			<!-- start:footer -->
			<footer>
			
		</div>
		<!-- end:footer -->

	</div>
	<!-- end:wrapper -->

</div>




