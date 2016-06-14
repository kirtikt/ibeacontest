
/*$(document).ready(function(){*/
	debugger;
var TypeId = $('#TypeId').val();
var userId = $('#userId').val();

$('#LoadingImageDiv').show();

var helloApp = angular.module("helloApp", []);
helloApp.controller("HttpController", [ '$scope', '$http',
	function($scope, $http) {
	debugger;
		$http({
			method : 'GET',
			
			url : 'http://rest.payless4sms.co.za/pl4sms/reseller/showSentSMSClient?params='+TypeId+'&userId'=+userId,
		}).success(function(data, status, headers, config) {
			debugger;
			$scope.sentsms = data;
			 $scope.curPage = 0;
			 $scope.pageSize = 10;
			 
			 $scope.numberOfPages = function() {
					return Math.ceil($scope.sentsms.length / $scope.pageSize);
				};

				$('#LoadingImageDiv').hide();
		}).error(function(data, status, headers, config) {
			debugger;
			$('#LoadingImageDiv').hide();
		});
		

	
} ])


angular.module('helloApp').filter('pagination', function()
{
 return function(input, start)
 {
  start = start;
  return input.slice(start);
 };
});

/*});*/