
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link href="${pageContext.request.contextPath}/Theme2/css/angular-datepicker.css" rel="stylesheet" type="text/css" />
  <script src="${pageContext.request.contextPath}/Theme2/js/angular-datepicker.js"></script>
    <script src="${pageContext.request.contextPath}/Theme2/js/angular-timepicker.js"></script>
<input type="hidden" value="${pageContext.request.contextPath}"
	id="contextPath">


<!-- start:main -->
<div class="container" style="position: relative;">
	<div id="main">
		<!-- start:breadcrumb -->
		<ol class="breadcrumb">
			<c:choose>
				<c:when
					test="${sessionScope.systemUser.getUserrole() == 'sysadmin'}">
					<li><a href="${pageContext.request.contextPath}/admin/home">Home</a></li>
				</c:when>
			
				<c:otherwise>
					<li><a
						href="${pageContext.request.contextPath}/user/clientSuccess">Home</a></li>
				</c:otherwise>
			</c:choose>
			<li class="active">Simulator</li>
		</ol>
		<!-- end:breadcrumb -->

	
		<div class="row" id="sendmessage">
			<div class="col-lg-12">
				<div class="blank-page">


				

					<section id="quicksms" class="panel"
						style="width: 50%; position: absolute; top: 8%; left: 20%;">
						<header class="panel-heading">
							<b>Unsubscribe Number</b>
						</header>
						<div class="panel-body">
							<form novalidate name="myForm" role="form">
								
								<div class="form-group">
								 <label><b>Enter Mobile Number</b></label>

									<div class="iconic-input right">

										<input type="text" class="form-control"
											ng-pattern="/^-?[0-9]\d*(\.\d+)?$/" ng-change="recChanged()"
											ng-model="input.to" name="number" placeholder="Cell Number"
											required="required">

										<span1 ng-bind="span1" style="color:red;">
										<b></b></span1>
										<span2 ng-bind="span2" style="color:red;">
										<b></b></span2>
										<div class="custom-error"
											ng-show="myForm.number.$error.pattern" style="color: red;">
											<b>Please Enter valid Cell Number</b>
										</div>
										</br>
										
								
								
									</div>
									
									
									
								</div>
					</div>
								<div class="form-group">
									<div class="col-lg-offset-2 col-lg-10">
										<!-- <button  class="btn btn-danger">Send SMS</button> -->

									
										<button class="btn btn-primary" data-toggle="modal"
											data-target=".bs-example-modal-sm">Unsubscribe</button>


										<button ng-click="cancel()" class="btn btn-danger">Cancel</button>

										<!--     <button class="btn btn-primary btn-circle" data-toggle="modal" data-target=".bs-example-modal-save" type="button" data-original-title="" title="">
<i class="fa fa-save" data-original-title="" title=""></i>
</button>                           -->




										<div class="panel-body">

											<div class="modal fade bs-example-modal-contact"
												tabindex="-1" role="dialog"
												aria-labelledby="mySmallModalLabel" aria-hidden="true">
												<div class="modal-dialog modal-sm">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">×</button>
															<h4 class="modal-title" id="mySmallModalLabel">
																<b>Do you want to unsubscribe this number?</b>
															</h4>
														</div>
														
															

													</div>
												</div>
											</div>
	
											
											<div class="modal fade bs-example-modal-sm" tabindex="-1"
												role="dialog" aria-labelledby="mySmallModalLabel"
												aria-hidden="true" style="display: none;">
												<div class="modal-dialog modal-sm">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal"
																aria-hidden="true">×</button>
															<h4 class="modal-title" id="mySmallModalLabel">
																<b>Do you want to unsubscribe this number?</b>
															</h4>
														</div>
														


															<button type="button" class="btn btn-primary"
																ng-click="unsubscribe()" data-dismiss="modal">Select</button>
															<button type="button" class="btn btn-primary"
																data-dismiss="modal">cancel</button>



														</div>
													</div>
												</div>
							</div></div></div></section>

				
				</div>
			</div>
		</div>




		<div id="success" class="panel panel-success"
			style="position: relative; width: 50%; left: 25%; display: none">
			<div class="panel-heading">
			<a ng-click="goBack()" style="cursor:pointer"><b><u>Click to Test again</u></b></a>
				<header class="panel-title">Success </header>
			</div>
			<div class="panel-body">
				<ul>
					<!-- <li>Time : {{ response.loadShedSchedule.timeFrom }} - {{ response.loadShedSchedule.timeTo}}</li> -->

					<li>Unsubscribe Request Sent</li>
				</ul>

				
			</div>





		</div>
		
		
	

	</div>
</div>
<script
	src="${pageContext.request.contextPath}/assets/js/CustomJs/unsubscribe.js"></script>

