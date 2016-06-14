

//alert(batch);
var contextPath = $('#contextPath').val();

var app = angular.module('helloApp', [ '720kb.datepicker' ]);

app
		.controller(
				'HttpController',
				[
						'$scope',
						'$rootScope',
						'$filter',
						'$location',
						'$window',
						'$http',
						function($scope, $rootScope, $filter, $location,
								$window, $http) {

							$scope.reloadRoute = function() {
								$window.location.reload();
							}
							$scope.input = {};
							$scope.input.areaCode = '';
							$scope.input.province = '';
							$scope.input.to = '';
							$scope.count = 0;
						
						


							 $scope.date = new Date();

						


							$rootScope.goBack = function() {
								$('#sendmessage').show();
								$('#successSub').hide();
								$('#success').hide();
								$scope.input.areaCode = '';
								$scope.input.province = '';
								$scope.input.to = '';
							
							};

							

						

						

							$scope.recChanged = function() {
								if ($scope.input.to.length < 10) {
									$scope.span2 = 'Cell number not valid.Please enter 10 or 11 digits cell number';
								}
								if ($scope.input.to.length == 10
										|| $scope.input.to.length == 11) {
									$scope.span2 = '';
								}
								if ($scope.input.to.length > 11) {
									$scope.span2 = 'Cell number not valid.Please enter 10 or 11 digits cell number';
								}

							};
							
							$scope.processFileForm = function(){
								
								var response = $http.post('confirmSend',
										$scope.arrBatch);
								
							}

						
							$('#quicksms').show();

					
						
						
								$scope.getOutput = function() {

								debugger;
								$scope.msgcount = 0;
							/*	var msglength = $scope.input.areaCode.length;*/
								var provincelength = $scope.input.province.length;
								var rec = $scope.input.to.length;


								if (provincelength < 1) {
									$scope.span3 = 'Province and suburb cannot be empty';
									
									return;
								}
								if ($scope.input.province.indexOf(',') > -1){
									
									$scope.input.areaCode=$scope.input.province.split(',')[1] ;
									$scope.input.province=$scope.input.province.split(',')[0] ;

								}else{
									$scope.span3 = 'Province and suburb cannot be empty';
								}
								var capitalized =$scope.input.province.toUpperCase();
								if(capitalized != 'CAPETOWN' && capitalized != 'CAPE TOWN'){
									$scope.span3 = 'Loadshed info not available for given province '+capitalized;
									return;
								}
									var msglength = $scope.input.areaCode.length;

								if (msglength < 1) {
									$scope.span3 = 'Suburb cannot be empty';

									return;
								}
								


								if (rec < 1
										&& $scope.input.numbers.length <1) {

									$scope.span1 = 'Please enter recipient mobile number';
									return;

								}

							

								
								$scope.span1 = '';
								$scope.span0 = '';

								
								
								var response = $http.post(contextPath+'/simulator/getOutputOnScreen',
										$scope.input);
								response.success(function(data, status,
										headers, config) {
									if (data != '') {

										$scope.response = data;
										

										$('#sendmessage').hide();
										$('#success').show();

									} else {

									}
								});
								response.error(function(data, status, headers,
										config) {
									// alert( "Exception details: " +
									// JSON.stringify({data: data}));
								});
								// Your action will goes here

								// }
							};

							
							

							$('#quicksms').show();

					
							$scope.startsmsNotify= function(){
								
								var response = $http.post(contextPath+'/simulator/startsmsnotify');
								response.success(function(data, status,
										headers, config) {
									if (data != '') {

//	$scope.response = data;
										

									/*	$('#sendmessage').hide();
										$('#success').show();*/

									

									}
								});
								response.error(function(data, status, headers,
										config) {
									// alert( "Exception details: " +
									// JSON.stringify({data: data}));
								});
							};
						
								$scope.sendRequest = function() {

								debugger;
								$scope.msgcount = 0;
								var provincelength = $scope.input.province.length;

							/*	var msglength = $scope.input.areaCode.length;*/
								var rec = $scope.input.to.length;


								if (provincelength < 1) {
									$scope.span3 = 'Province and suburb cannot be empty';
									
									return;
								}
								if ($scope.input.province.indexOf(',') > -1){
									
									$scope.input.areaCode=$scope.input.province.split(',')[1] ;
									$scope.input.province=$scope.input.province.split(',')[0] ;

								}else{
									$scope.span3 = 'Province and suburb cannot be empty';
								}
								var capitalized =$scope.input.province.toUpperCase();
								if(capitalized != 'CAPETOWN' && capitalized != 'CAPE TOWN'){
									$scope.span3 = 'Loadshed info not available for given province '+capitalized;
									return;
								}
									var msglength = $scope.input.areaCode.length;

								if (msglength < 1) {
									$scope.span3 = 'Suburb cannot be empty';

									return;
								}
								

								if (rec < 1
										&& $scope.input.numbers.length <1) {

									$scope.span1 = 'Please enter recipient mobile number';
									return;

								}

							

								
								$scope.span1 = '';
								$scope.span0 = '';

								
								
								var response = $http.post(contextPath+'/simulator/sendRequest',
										$scope.input);
								response.success(function(data, status,
										headers, config) {
									if (data != '') {

	$scope.response = data;
										

										$('#sendmessage').hide();
										$('#success').show();

									

									}
								});
								response.error(function(data, status, headers,
										config) {
									// alert( "Exception details: " +
									// JSON.stringify({data: data}));
								});
								// Your action will goes here

								// }
							};

							

						} ])

app
		.directive(
				"ngTimeSelector",
				function() {
					return {
						restrict : 'EA',
						template : '<div class="timeSelectorDirective"> <div class="section hours"> <div class="increase" ng-click="increaseHours()"> <i class="icon fa fa-caret-up"></i> </div> <div class="display"> {{displayHours()}} </div> <div class="decrease" ng-click="decreaseHours()"> <i class="icon fa fa-caret-down"></i> </div> </div> <div class="section minutes"> <div class="increase" ng-click="increaseMinutes()"> <i class="icon fa fa-caret-up"></i> </div> <div class="display"> {{displayMinutes()}} </div> <div class="decrease" ng-click="decreaseMinutes()"> <i class="icon fa fa-caret-down"></i> </div> </div> <div class="section hours"> <div class="increase" ng-click="switchPeriod()"> <i class="icon fa fa-caret-up"></i> </div> <div ng-if="hours >= 12" class="display"> PM </div> <div ng-if="hours < 12" class="display"> AM </div> <div class="decrease" ng-click="switchPeriod()"> <i class="icon fa fa-caret-down"></i> </div> </div> </div>',
						scope : {
							hours : "=",
							minutes : "="
						},
						replace : true,
						link : function(scope, elem, attr) {

							// Create vars
							scope.period = "AM";

							/* Increases hours by one */
							scope.increaseHours = function() {

								// Check whether hours have reached max
								if (scope.hours < 23) {
									scope.hours = ++scope.hours;
								} else {
									scope.hours = 0;
								}
							}

							/* Decreases hours by one */
							scope.decreaseHours = function() {

								// Check whether hours have reached min
								scope.hours = scope.hours <= 0 ? 23
										: --scope.hours;
							}

							/* Increases minutes by one */
							scope.increaseMinutes = function() {

								// Check whether to reset
								if (scope.minutes >= 59) {
									scope.minutes = 0;
								} else {
									scope.minutes++;
								}
							}

							/* Decreases minutes by one */
							scope.decreaseMinutes = function() {

								// Check whether to reset
								if (scope.minutes <= 0) {
									scope.minutes = 59;
								} else {
									scope.minutes = --scope.minutes;
								}
							}

							/* Displays hours - what the user sees */
							scope.displayHours = function() {

								// Create vars
								var hoursToDisplay = scope.hours;

								// Check whether to reset etc
								if (scope.hours > 12) {
									hoursToDisplay = scope.hours - 12;
								}

								// Check for 12 AM etc
								if (hoursToDisplay == 0) {

									// Set to am and display 12
									hoursToDisplay = 12;
								} else {

									// Check whether to prepend 0
									if (hoursToDisplay <= 9) {
										hoursToDisplay = "0" + hoursToDisplay;
									}
								}

								return hoursToDisplay;
							}

							/* Displays minutes */
							scope.displayMinutes = function() {
								return scope.minutes <= 9 ? "0" + scope.minutes
										: scope.minutes;
							}

							/* Switches the current period by ammending hours */
							scope.switchPeriod = function() {
								scope.hours = scope.hours >= 12 ? scope.hours - 12
										: scope.hours + 12;
							}
						}
					}
				});