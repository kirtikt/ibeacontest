<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="${pageContext.request.contextPath}/Theme2/css/angular-datepicker.css"
	rel="stylesheet" type="text/css" />
<script
	src="${pageContext.request.contextPath}/Theme2/js/angular-datepicker.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/dirPagination.js"></script>

<input type="hidden" value="${pageContext.request.contextPath}"
	id="contextPath">

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
			<div class="">
				<!-- start:state overview -->
				<div class="row state-overview">






					<span id="norecorddiv" style="display: none; font-size: 15"
						id="norecorddiv" class="label label-success"><b>No
							Records Found</b></span> <span id="nomorerecorddiv"
						style="display: none; font-size: 15" id="norecorddiv"
						class="label label-success"><b>No More Records Found</b></span>

					<!-- start:dynamic data table -->
					<div class="row"
						style="position: relative; top: 60%; display: none;" id="tablediv">
						<div class="col-lg-12">
							<section class="panel">
								<header class="panel-heading"
									style="color: blue; text-align: center;">
									<b>Showing Output Message Reports for {{date}} to {{date1}} </b>
								</header>
								
								
									<form class="form-inline" id="forminline">
				<br>
				<div class="form-group">
					<label>Search</label> <input type="text" ng-model="search"
						class="form-control" placeholder="Search">
				</div>
				<div class="col-xs-4">
					<label for="search">Records per page:</label> <input type="number"
						min="1" max="100" class="form-control" ng-model="pageSize" value="50">
				</div>
			</form>
								<div class="panel-body">
									<div class="adv-table">

<div id="LoadingImageDiv" 
				style="background-color: #FFF !important; ">
				<div style="left: 40%; position: absolute !important; top: 50%;">
					<p>
						<img
							src="${pageContext.request.contextPath}/assets/img/loading.gif" />
					</p>
				</div>
			</div>
										<table class="display table-striped table-hover  "
											id="example"
											style="table-layout: fixed; width: 100%; font-size: 12px; word-wrap: break-word;">
											<thead>
												<tr>

												<!-- 	<th>Select</th> -->
													<th>Index</th>
													<th>Destination</th>
													<th>Message</th>
													<th>Sent Date</th>
												
													<!-- <th class="center hidden-phone" ng-show="checked"><i></i>sTId</th>
										<th class="center hidden-phone" ng-show="checked"><i></i>cTId</th>
										<th class="center hidden-phone" ng-show="checked"><i></i>Message
											Charge</th>
										<th class="center hidden-phone" ng-show="checked"><i></i> Receipt ID</th>
                               -->

												</tr>
											</thead>
											<tbody>
											<!-- 	<tr class="gradeX" ng-repeat="sms in sentsms|filter:search">
													<td><input type="checkbox" name="{{sms.id}}"
														id="{{sms.id}}" ng-model="sms.checked"
														ng-change="selectedSongs()"> {{ sms.index}}</td>
													<td>{{ sms.index}}</td>
													<td>{{ sms.destination}}</td>
													<td id="truncateMessage">{{sms.message}}</td>
													<td>{{sms.jsonSentDate}}</td>
													<td>{{sms.receiptStatus}}</td>
													<td><a class="handcursor" ng-click="row(sms)"
														style="color: red;">Show Details</a></td>
													<td class="center hidden-phone">{{sms.stid}}</td>
										<td class="center hidden-phone" ng-show="checked">{{sms.ctid}}</td>
										<td class="center hidden-phone" ng-show="checked">{{sms.MessageCost}}</td>
										<td class="center hidden-phone" ng-show="checked">{{sms.MessageCost}}</td>
                                  
												</tr> -->
													<tr class="gradeX" ng-repeat="sms in sentsms|filter:search">
													<!-- <td><input type="checkbox" name="{{sms.id}}"
														id="{{sms.id}}" ng-model="sms.checked"
														ng-change="selectedSongs()"> {{ sms.index}}</td> -->
													<td>{{ $index+1}}</td>
													<td>{{ sms.address}}</td>
													<td >{{sms.message}}</td>
													<td >{{sms.sentTime|dateFilter}}</td>
													
													     
												</tr>
											</tbody>
											<tfoot>
											</tfoot>
										</table>
 

									</div>
								</div>


								<!-- 	<div ng-show="sentsms.length"
						class="pagination pagination-centered"
						>
						<ul class="pagination-controle pagination">
							<li>
								<button ng-click="curPage=curPage-1" ng-disabled="curPage == 0"
									class="btn btn-primary" type="button" data-original-title=""
									title="" disabled="disabled">&lt; PREV</button>
							</li>
							<li><span class="ng-binding">Page 1 of curPage</span></li>
							<li>
								<button ng-click="pageChanged(curPage)" class="btn btn-primary"
									type="button" data-original-title="" title="">NEXT
									&gt;</button>
							</li>
								ng-disabled="curPage >= sentsms.length/pageSize - 1"
						</ul>
					</div>
 -->

								<!-- 
<div class="pagination pagination-centered"
						ng-show="sentsms.length" style="position: relative; left: 2%">
						<ul class="pagination-controle pagination">
							<li>
								<button type="button" class="btn btn-primary"
									 ng-click="curPage=curPage-1">
									&lt; PREV</button>
							</li>
							<li><span>Page {{curPage }} of {{
									numberOfPages()}}</span></li>
							<li>
								<button type="button" class="btn btn-primary"								
									ng-click="pageChanged(curPage)">NEXT &gt;</button>
							</li>
						</ul>
					</div> -->
								<div class="pagination pagination-centered"
									ng-show="sentsms.length">
									<ul class="pagination-controle pagination">
										<li>
											<button type="button" class="btn btn-primary"
												ng-disabled="curPage < 0"
												ng-click="curPage=curPage-1;pagePrev(curPage);">
												&lt; PREV</button>
										</li>
										<li><span>Page {{pageNumber-1}} of {{ pageNumber-1}}</span></li>
										<li>
											<button type="button" class="btn btn-primary"
												ng-click="pageChanged(curPage)">NEXT &gt;</button>
										</li>

										<!-- <li id="specialButton">
											<button type="button" class="fa trash-o" ng-click="delete()"></button>
										</li> -->

									</ul>
								</div>




							</section>



						</div>



					</div>

					<%-- <div class="panel panel-info panel-drop" id="infodiv"
						style="display: none;">
						<div class="panel-heading">
							<header class="panel-title"> Message Details </header>
						</div>
						<div class="panel-body">





							<div class="list-group"
								style="width: 100%; word-wrap: break-word;">
								<div class="list-group-item list-group-item-info ng-binding"
									href="#" style="background-color: white; color: black;">
									<b><i class="fa fa-comment"></i> Message Text: </b> <span
										class="badge badge-danger"></span> {{sms.dlr_url|split:' ':11|split:'=':1|removePlus}}
								</div>

								<!-- 	<div class="list-group-item list-group-item-info ng-binding"
									href="#" style="background-color: white;color: black;"> <b><i class="fa fa-comment"></i> Delivery Time
										Text: </b> <span class="badge badge-danger"></span>
									{{sms.message}}
								<div>  -->
								<!-- <div class="list-group-item list-group-item-info ng-binding"
									href="" style="background-color: white; color: black;">
									<b> stId : </b> <span class="badge badge-primary"></span>
									{{sms.stid}}
								</div> -->
								<div class="list-group-item list-group-item-info ng-binding"
									href="#" style="background-color: white; color: black;">
									<b> ctId:</b> <span class="badge badge-info"></span>
								<!-- 	{{sms.cTId}} -->{{sms.dlr_url|split:' ':3|split:'=':1}}
								</div>
								<div class="list-group-item list-group-item-info ng-binding"
									href="#" style="background-color: white; color: black;">
									<b>Message Cost:</b> <span class="badge badge-warning"></span>
									<!-- {{sms.messageCost}} -->{{sms.dlr_url|split:' ':0|split:'=':1}}
								</div>
								<c:if test="${sessionScope.systemUser.getClientref() == 'sysadmin'}">
								<div class="list-group-item list-group-item-info ng-binding"
									href="#" style="background-color: white; color: black;">
									<b>Request Response Time:</b> <span class="badge badge-warning"></span>
									<!-- {{sms.requestResponseTime}} -->{{sms.dlr_url|split:' ':8|split:'=':1}}
								</div>
								</c:if>
							<!-- 	<div class="list-group-item list-group-item-info ng-binding"
									href="#" style="background-color: white; color: black;">
									<b>Sent Email Address</b> <span class="badge badge-success"></span>
									{{sms.sentEmail}}
								</div>
								<div class="list-group-item list-group-item-info ng-binding"
									href="#" style="background-color: white; color: black;">
									<b>Delivered Email Address</b> <span
										class="badge badge-success"></span> {{sms.delEmails}}
								</div>
								<div class="list-group-item list-group-item-info ng-binding"
									href="#" style="background-color: white; color: black;">
									<b>Reply Email Address</b><span class="badge badge-success"></span>
									{{sms.replyEmails}}
								</div> -->
							</div>
						</div>
					</div>
 --%>



				</div>


			</div>
		</div>



		</br>
		</br>
		<div class="row">
			<label>Select Date Range<i class="fa fa-calendar"></i></label>


			<form class="form-inline ng-valid ng-dirty ng-pristine"
				id="forminlinedatepicker" style="position: relative; top: -2%;">
				<br>
				<div style="width: 50%" class="form-group">
					<datepicker date-format="{{pattern}}"
						button-prev="<i class='fa fa-arrow-left' ></i>"
						button-next="<i class='fa fa-arrow-right'></i>">
					Start Date: <input
						class="form-control ng-valid ng-valid-number ng-valid-max ng-valid-min ng-dirty ng-pristine"
						ng-model="date" type="text" /> </datepicker>
					</br>
					</br>
					<datepicker date-format="{{pattern}}"
						button-prev="<i class='fa fa-arrow-left' ></i>"
						button-next="<i class='fa fa-arrow-right'></i>"> End
					Date : <input
						class="form-control ng-valid ng-valid-number ng-valid-max ng-valid-min ng-dirty ng-pristine"
						ng-model="date1" type="text" /> </datepicker>
				</div>
			</form>

			
		
			
			

			<button class="btn btn-primary" ng-click="viewTodays()">Generate
				Report</button>
			</br>
			</br>

		<!-- 	<form action="/pl4sms/client/DownloadSMSReport" method="get">
				<input type="hidden" name="startdate" value="{{date}}"> <input
					type="hidden" name="enddate" value="{{date1}}"> <input
					type="hidden" name="param" value="param">
					<input type="hidden" name="loadedCheck" value="{{loadedCheck}}">
				<div class="showback" style="position: relative;">


					<div class="bootstrap-demo">

						<div class="btn-group">
							<button class="btn btn-primary" type="submit"
								data-original-title="" title="">Download Report</button>


						</div>
					</div>
				</div>

			</form> -->
		</div>
	</div>

	<!-- 			<div class="col-lg-4">
				start:user info
				<div class="panel panel-default">
					<div class="panel-heading">
						<header class="panel-title">
							<div class="text-center">
								<strong>Summary</strong>  <strong>.</strong>
							</div>
						</header>
					</div>
					 <div class="well well-info">
                            <h3>Sent SMS Summary</h3>
<ul><li>Total Messages Loaded</li>
<li>Total Messages Sent</li>
<li>Total Messages Delivered</li>
<li>Total Messages Failed</li>
</ul>            

Note: Summary contains only todays's information                
                            
                        </div>
	
				</div>
				
		
		
</div> -->
</div>
<script
	src="${pageContext.request.contextPath}/assets/js/CustomJs/sentSMSJS.js"></script>