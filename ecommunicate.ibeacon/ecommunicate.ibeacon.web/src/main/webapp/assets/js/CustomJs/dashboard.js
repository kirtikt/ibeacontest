debugger;



/*$(document).ready(function(){*/
	debugger;
	 var dtelinfo ='expand';
var TypeId = $('#TypeId').val();
var contextPath = $('#contextPath').val();

$('#LoadingImageDiv').show();

var helloApp = angular.module("helloApp", []);
helloApp.controller("HttpController", [ '$scope','$window','$rootScope','$location', '$anchorScroll',
                                		'$http','$interval',
	function($scope,$window,$rootScope,$location, $anchorScroll, $http,$interval) {
	debugger;
	

				    	  $scope.startsmsNotify= function(){
								
								var response = $http.post(contextPath+'/simulator/startsmsnotify');
								response.success(function(data, status,
										headers, config) {
									if (data != '') {

//	$scope.response = data;
										
/*
										$('#sendmessage').hide();*/
										$('#success').show();

									

									}
								});
								response.error(function(data, status, headers,
										config) {
									// alert( "Exception details: " +
									// JSON.stringify({data: data}));
								});
							};
				    	  
				    	  
		
		    
} ])

