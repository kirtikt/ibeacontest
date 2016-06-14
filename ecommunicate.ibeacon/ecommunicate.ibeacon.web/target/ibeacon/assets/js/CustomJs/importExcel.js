
/*$(document).ready(function(){*/
	debugger;
var TypeId = $('#TypeId').val();
	
	var contextPath = $('#contextPath').val();

$('#LoadingImageDiv').show();

var helloApp = angular.module("helloApp", ['angularUtils.directives.dirPagination']);
helloApp.controller("HttpController", [ '$scope', '$http',
	function($scope, $http) {
	
	$scope.choices = [];
	$scope.contact = [];
	$scope.userId="";
    $scope.contactdata = [];
    $scope.editingData = [];

  
    for (var i = 0, length = $scope.contactdata.length; i < length; i++) {
      $scope.editingData[$scope.contactdata[i].id] = false;
    }


    $scope.modify = function(area){
        $scope.editingData[area.id] = true;
    };



    $scope.remove = function(area){
    	var response = $http.post(contextPath+'/admin/removeAreaCode', area);
		response.success(function(data, status, headers, config) {
			location
			.reload(true);
});
		response.error(function(data, status, headers, config) {
//			alert( "Exception details: " + JSON.stringify({data: data}));
		});
    };
    
    $scope.update = function(area){
        $scope.editingData[area.id] = false;
        
    	var response = $http.post(contextPath+'/admin/updateAreacode', area);
		response.success(function(data, status, headers, config) {
//			alert("success")
});
		response.error(function(data, status, headers, config) {
//			alert( "Exception details: " + JSON.stringify({data: data}));
		});

    };
	  


	debugger;
		$http({
			method : 'GET',
			
			url : contextPath+'/admin/viewAllAreaCode',
			
		}).success(function(data, status, headers, config) {
			debugger;
			if(data==''){
			
				$('#tablediv').show();

		/*		$('#check').hide();
				$('#emailtablediv').hide();
*/				$('#forminline').show();

				
				
			}else{
			
				
				
			$scope.areaCodes = data;
			 $scope.curPage = 0; 
			 $scope.count = 0;
			 $scope.pageSize = 5;
				$('#norecorddiv').hide();
				$('#tablediv').show();
			/*	$('#check').show();
				$('#checkemail').show();
				$('#emailtablediv').show();*/
				$('#forminline').show();

			 
		/*	 $scope.numberOfPages = function() {
					return Math.ceil($scope.sentsms.length / $scope.pageSize);
				};*/
				
				
				 $scope.sort = function(keyname){
				        $scope.sortKey = keyname;   //set the sortKey to the param passed
				        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
				    }
			
			}
				$('#LoadingImageDiv').hide();
		}).error(function(data, status, headers, config) {
			debugger;
			$('#LoadingImageDiv').hide();
		});
		
	/*
		$scope.submit = function() {
			var contextPath = $('#contextPath').val();
			
//			var userId = $('#userId').val();
			var choicearr = $scope.choices;
			JSON.stringi
			debugger;

			 
			 
			
			var response = $http.post('/pl4sms/admin/SaveNewContacts', $scope.choices);
			response.success(function(data, status, headers, config) {
				if(data=='true'){
				location
				.reload(true);
			}
			else{
				$('#span1').show();
			}
});
			response.error(function(data, status, headers, config) {
//				alert( "Exception details: " + JSON.stringify({data: data}));
			});

		};*/
} ])
