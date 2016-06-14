<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script
	src="${pageContext.request.contextPath}/assets/js/dirPagination.js"></script>

<input type="hidden" value="${pageContext.request.contextPath}"
	id="contextPath">

<!-- start:main -->
<div class="container" style="position: relative;">
	<div id="main">
		<!-- start:breadcrumb -->
		<ol class="breadcrumb">
			<li><a href="${pageContext.request.contextPath}/admin/home">Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
		<!-- end:breadcrumb -->

	
		

		
                <div class="row" id="home-content">
                    <div class="col-lg-8">
                        <!-- start:state overview -->
                        <div class="row state-overview">
		<div class="row" style="position: relative; top: 60%; 
			id="tablediv">
			<div class="col-lg-12">
				<section class="panel">

	<section class="panel">
	<button ng-click="startsmsNotify()" class="btn btn-danger">Start Sms notification</button>
	<%-- <button class="btn btn-success" ng-click="reloadRoute()" style="position:relative;left:50%;">Refresh</button>
	<button class="btn btn-success" ng-disabled="isDisabled" ng-click="startcPU()" style="position:relative;left:50%;">Start CPU Check</button>
	<button class="btn btn-success" ng-disabled="isEnabled" ng-click="stopcPU()" style="position:relative;left:50%;">Stop CPU Check</button>
		<button class="btn btn-success"  ng-click="loadProperties()" style="position:relative;left:50%;">Load Properties</button>
	
					<header class="panel-heading"><h4>Current Information For Sacv  </h4></header>
					<div class="panel-body">
						<div class="adv-table">
							<table
								class="display table table-bordered table-striped table-hover table table-bordered"
								id="example"
								style="table-layout: fixed; width: 100%; font-size: 9px; word-wrap: break-word;">
								<thead>
									<tr>
								<!-- 		<th>Index</th> -->
										<th>Smsc</th>
										<th>Loaded for sending</th>
										<th>Failed In Processing</th>
										<th>Message Successfully Sent</th>
										<th>Rejected by MNO</th>
										<th>Number of delivery receipts</th>
										<th>Failed delivery to recipient</th>
										<th>Reply</th>
<th>Date</th>
									</tr>
								</thead>
								<tbody>
									<tr class="gradeA"
										>


										<td>{{ sacvToday.aggregator}}</td>
										<td>{{sacvToday.loadedCount}}</td>
										<td>{{sacvToday.kannelAccept}}</td>
										<td>{{sacvToday.sentCount}}</td>
										<td>{{sacvToday.rejectedCount}}</td>
										<td>{{sacvToday.deliveredCount}}</td>
										<td>{{sacvToday.failedCount}}</td>
										<td>{{sacvToday.replyCount}}</td>

										<td>{{sacvToday.date}}</td>

									</tr>
								</tbody>

								</tfoot>
							</table>
						</div>
					</div>


				</section>


<div id="LoadingImageDiv" 
				style="background-color: #FFF !important; ">
				<div style="left: 40%; position: absolute !important; top: 50%;">
					<p>
						<img
							src="${pageContext.request.contextPath}/assets/img/loading.gif" />
					</p>
				</div>
			</div>
			
	<section class="panel">
					<header class="panel-heading"><h4>Current Information For Vodacom-offnet  </h4></header>
					<div class="panel-body">
						<div class="adv-table">
							<table
								class="display table table-bordered table-striped table-hover table table-bordered"
								id="example"
								style="table-layout: fixed; width: 100%; font-size: 9px; word-wrap: break-word;">
								<thead>
									<tr>
								<!-- 		<th>Index</th> -->
											<th>Smsc</th>
										<th>Loaded for sending</th>
									<th>Failed In Processing</th>
										<th>Message Successfully Sent</th>
										<th>Rejected by MNO</th>
										<th>Number of delivery receipts</th>
										<th>Failed delivery to recipient</th>
										<th>Reply</th>
<th>Date</th>

									</tr>
								</thead>
								<tbody>
									<tr class="gradeA">

<!-- <td>{{past.index}}</td> -->
										<td>{{ vodaToday.aggregator}}</td>
										<td>{{vodaToday.loadedCount}}</td>
										<td>{{vodaToday.kannelAccept}}</td>
										<td>{{vodaToday.sentCount}}</td>
										<td>{{vodaToday.rejectedCount}}</td>
										<td>{{vodaToday.deliveredCount}}</td>
										<td>{{vodaToday.failedCount}}</td>
										<td>{{vodaToday.replyCount}}</td>

										<td>{{vodaToday.date}}</td>

									</tr>

								</tfoot>
							</table>
						</div>
					</div>


				</section>
			</div>



		</div>

      

	
		<!-- start:dynamic data table -->
		
		<div id="pastdatatabledtel" class="row"
			style="position: relative; top: 60%; display: none;">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> <h4>Last 7 Days Information Of Sacv </h4></header>
					<div class="panel-body">
						<div class="adv-table">
							<table
								class="display table table-bordered table-striped table-hover table table-bordered"
								id="example"
								style="table-layout: fixed; width: 100%; font-size: 10px; word-wrap: break-word;">
								<thead>
									<tr>
									<th>Smsc</th>
										<th>Loaded for sending</th>
										<th>Accepted by Internal SMS Gateway</th>
										<th>Message Successfully Sent</th>
										<th>Rejected by MNO</th>
										<th>Number of delivery receipts</th>
										<th>Failed delivery to recipient</th>
										<th>Reply</th>
										<th>Date</th>

									</tr>
								</thead>
								<tbody >
									<tr class="gradeA"
									>

<!-- <td>{{past.index}}</td> -->
										<td>{{ msgcounts.aggregator}}</td>
										<td>{{msgcounts.loadedCount}}</td>
										<td>{{msgcounts.kannelAccept}}</td>
										<td>{{msgcounts.sentCount}}</td>
										<td>{{msgcounts.rejectedCount}}</td>
										<td>{{msgcounts.deliveredCount}}</td>
										<td>{{msgcounts.failedCount}}</td>
										<td>{{msgcounts.replyCount}}</td>

										<td>{{msgcounts.date}}</td>

									</tr>
								</tbody>

								</tfoot>
							</table>
						</div>
					</div>


				</section>



			</div>



		</div>
			<div id="pastdatatablesacv" class="row"
			style="position: relative; top: 60%; display: none;" >
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> <h4>Last 7 Days Information Of Vodacom </h4></header>
					<div class="panel-body">
						<div class="adv-table">
							<table
								class="display table table-bordered table-striped table-hover table table-bordered"
								id="example"
								style="table-layout: fixed; width: 100%; font-size: 10px; word-wrap: break-word;">
								<thead>
									<tr>
										<th>Smsc</th>
										<th>Loaded for sending</th>
										<th>Accepted by Internal SMS Gateway</th>
										<th>Message Successfully Sent</th>
										<th>Rejected by MNO</th>
										<th>Number of delivery receipts</th>
										<th>Failed delivery to recipient</th>
										<th>Reply</th>
										<th>Date</th>

									</tr>
								</thead>
								<tbody >
									<tr class="gradeA"
										>

<!-- <td>{{past.index}}</td> -->
										<td>{{ msgcountsvoda.aggregator}}</td>
										<td>{{msgcountsvoda.loadedCount}}</td>
										<td>{{msgcountsvoda.kannelAccept}}</td>
										<td>{{msgcountsvoda.sentCount}}</td>
										<td>{{msgcountsvoda.rejectedCount}}</td>
										<td>{{msgcountsvoda.deliveredCount}}</td>
										<td>{{msgcountsvoda.failedCount}}</td>
										<td>{{msgcountsvoda.replyCount}}</td>

										<td>{{msgcountsvoda.date}}</td>

									</tr>
								</tbody>

								</tfoot>
							</table>
						</div>
					</div>


				</section>



			</div>



		</div>
		
		
</div></div>

 
 
    <div class="col-lg-4">
    
    
        <div class="panel-heading">
                                <header class="panel-title">
                                    <div class="text-center">
                                        <strong>Kannel</strong> Status <strong>.</strong>
                                    </div>
                                </header>
                            </div>
  <div class="panel-body" id="kanneldetail" style="display: none">


						<div class="panel">

							<div id="kannelup" class="panel-body" style="color: green;display: none">
                
                               <img src="/pl4sms/assets/img/kannelup.gif" height="90"> kannel is up and running

                
              </div>
              <div id="kanneldown" class="panel-body" style="color: red;display: none" >
                
                               <img src="/pl4sms/assets/img/kanneldown.gif" height="90"> kannel is down

                
              </div>
              
              
              </div></div>
  
                        <!-- start:user info -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <header class="panel-title">
                                    <div class="text-center">
                                        <strong>Online</strong> Smsc <strong>.</strong>
                                    </div>
                                </header>
                            </div>
					<div class="panel-body" id="onlinesmsc" style="display: none">


						<div class="panel">

							<div class="panel-body">
								<ul class="list-group" ng-repeat="sm in smsc">
									<div ng-switch="sm.flag">


										<div ng-switch-when='1'>
											<li class="list-group-item"><span
												class=""><img
													src="${pageContext.request.contextPath}/assets/img/online.gif" style="height: 2%"></span>
												<b> {{sm.smsc}}</b> {{ sm.status}}</li>
										</div>
										<div ng-switch-when='2' style="color: red;">
											<li class="list-group-item"><span
												class=""> <img
													src="${pageContext.request.contextPath}/assets/img/offline.png" style="height: 2%"></span>
												<b> {{sm.smsc}}</b> {{ sm.status}}</li>
										</div>
										</div>
								</ul>
							</div>
						</div>

					</div>

				</div>

	</div>


</div>
 --%>
 </section>
 <div id="success" class="panel panel-success"
			style="position: relative; width: 50%; left: 25%; display: none">
			<div class="panel-heading">
			<a ng-click="goBack()" style="cursor:pointer"><b><u>Click to Test again</u></b></a>
				<header class="panel-title"> LoadShedding Schedule Response </header>
			</div>
			<div class="panel-body">
				<ul>
				
					<!-- <li>Time : {{ response.loadShedSchedule.timeFrom }} - {{ response.loadShedSchedule.timeTo}}</li> -->

					<li><b>SMS Notification Started</b></li>
				</ul>

				
			</div>





		</div>
		
 
 
		</div></section>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		
		







    		<script type="text/javascript"	src="${pageContext.request.contextPath}/assets/js/CustomJs/dashboard.js"></script>
