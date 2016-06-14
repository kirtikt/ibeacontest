/*$(document).ready(function(){*/
debugger;
var TypeId = $('#TypeId').val();
var userId = $('#userId').val();
var contextPath = $('#contextPath').val();


$('#LoadingImageDiv').show();

var helloApp = angular.module("helloApp",
		[ 'angularUtils.directives.dirPagination','720kb.datepicker' ]);

helloApp.controller("HttpController", [
		'$scope','$filter','$window','$rootScope','$location', '$anchorScroll',
		'$http',
		function($scope,$filter,$window,$rootScope,$location, $anchorScroll, $http) {
			$scope.pageNumber = 1;
			 $scope.selection=[];
			 $scope.sentsms=[];
			 $scope.selectedAll=true;
			 $scope.pageSize=50;
			 $scope.loadedCheck=false;
			/* $scope.schMsgChckBox= true;
			 $scope.delMsgChckBox= true;
			 $scope.failMsgChckBox= true;

			 $scope.expMsgChckBox= true;
			 $scope.faildelMsgChckBox= true;
			 $scope.penMsgChckBox= true;
*/
			
			  $scope.subsStatus = {
				        "1":"Subscribed Successfully",
				   
				         "2":"Unsubscribed",
				        	  "3":"Service renewed"
				   			    	 
				  	  
				    }
			  
			
			  
			$scope.reloadRoute = function() {
				   $window.location.reload();
				}
			
		/*	$scope. = function() {
      			$window.history.back();
      			
      			 };*/
		
	          $scope.showMeridian = true;
			$scope.pattern='yyyy-MM-dd HH:mm:ss';
			var d=new Date();
			var year=d.getFullYear();
			var month=d.getMonth()+1;
			if (month<10){
			month="0" + month;
			};
			var day=d.getDate();
			var day2=d.getDate()+1;
			$scope.date=year + "-" + month + "-" + day + " " +"00:00:00" ;
			$scope.date1=year + "-" + month + "-" + day2 + " " +"00:00:00";
      			 
			
			    
			    
			  
			
			   
     			  var history = [];

     		    $rootScope.$on('$routeChangeSuccess', function() {
     		        history.push($location.$$path);
     		    });

     		    $rootScope.doTheBack = function () {
     		        var prevUrl = history.length > 1 ? history.splice(-2)[0] : "/";
     		        $location.path(prevUrl);
     		    };
      			 	
			$scope.row = function(sms) {

      		$scope.sms = sms;
      		$('#infodiv').show();
      		 $location.hash('infodiv');

      	      // call $anchorScroll()
      	      $anchorScroll();
      	
      			 
			};
			$scope.pageChanged = function(num) {
				$('#norecorddiv').hide();
				$('#nomorerecorddiv').hide();
				$('#LoadingImageDiv').hide();

				/*
				 * alert(num+'changes');
				 */
				
				num = num + 1;
				
				var response = $http.get(contextPath
						+ '/client/showSentSMS?params=' + TypeId + '&userId='
						+ userId + '&pageSize=' + $scope.pageSize
						+ '&pageNumber=' + $scope.pageNumber+"&startdate="+$scope.date+"&enddate="+$scope.date1+"&schMsgChck="+$scope.checkBox[0].Selected+"&selectedAll="+$scope.selectedAll+"&delMsgChckBox="+$scope.checkBox[4].Selected
						+"&expMsgChckBox="+$scope.checkBox[1].Selected+"&faildelMsgChckBox="+$scope.checkBox[5].Selected+"&checkLoaded="+$scope.loadedCheck+"&penMsgChckBox="+$scope.checkBox[2].Selected+"&failMsgChckBox="+$scope.checkBox[3].Selected);
				response.success(function(data, status, headers, config) {
					if(data==''){
						$('#nomorerecorddiv').show();
						$('#backButton').show();
						$('#tablediv').hide();
						$('#norecorddiv').hide();

					
						$('#check').hide();
						$('#emailtablediv').hide();
						$('#forminline').show();
						$('#infodiv').hide();
					} else {
					

					$scope.sentsms = data;
					$scope.curPage = num;
					$scope.count = 0;
					$scope.pageNumber =$scope.pageNumber+1;
					$scope.numberOfPages = function() {
						return Math.ceil($scope.sentsms.length
								/ $scope.pageSize);
					};
					$('#nomorerecorddiv').hide();
					$scope.sort = function(keyname) {
						$scope.sortKey = keyname; // set the sortKey to the
													// param passed
						$scope.reverse = !$scope.reverse; // if true make it
															// false and vice
															// versa
					}
					}
				});
				response.error(function(data, status, headers, config) {
					// alert( "Exception details: " + JSON.stringify({data:
					// data}));
				});
				$('#LoadingImageDiv').hide();

			};
			
			
			$scope.pagePrev = function(num) {
				$('#norecorddiv').hide();
				$('#nomorerecorddiv').hide();
											$('#LoadingImageDiv').show();

				/*
				 * alert(num+'changes');
				 */
				 $scope.pageNumber= $scope.pageNumber-1;
				var response = $http.get(contextPath
						+ '/client/showSentSMS?params=' + TypeId + '&userId='
						+ userId + '&pageSize=' + $scope.pageSize
						+ '&pageNumber=' + $scope.pageNumber+"&startdate="+$scope.date+"&enddate="+$scope.date1+"&schMsgChck="+$scope.checkBox[0].Selected+"&selectedAll="+$scope.selectedAll+"&delMsgChckBox="+$scope.checkBox[4].Selected
						+"&expMsgChckBox="+$scope.checkBox[1].Selected+"&faildelMsgChckBox="+$scope.checkBox[5].Selected+"&penMsgChckBox="+$scope.checkBox[2].Selected+"&failMsgChckBox="+$scope.checkBox[3].Selected+"&checkLoaded="+$scope.loadedCheck);
				response.success(function(data, status, headers, config) {
					if(data==''){
						$('#nomorerecorddiv').show();
						$('#backButton').show();
						$('#tablediv').hide();
						$('#norecorddiv').hide();

					
						$('#check').hide();
						$('#emailtablediv').hide();
						$('#forminline').show();
						$('#infodiv').hide();
					} else {
					

					$scope.sentsms = data;
					$scope.curPage = num;
					$scope.count = 0;

					$scope.numberOfPages = function() {
						return Math.ceil($scope.sentsms.length
								/ $scope.pageSize);
					};
					$('#nomorerecorddiv').hide();
					$scope.sort = function(keyname) {
						$scope.sortKey = keyname; // set the sortKey to the
													// param passed
						$scope.reverse = !$scope.reverse; // if true make it
															// false and vice
															// versa
					}
					}
				});
				response.error(function(data, status, headers, config) {
					// alert( "Exception details: " + JSON.stringify({data:
					// data}));
				});
				$('#LoadingImageDiv').hide();

			};

			$scope.viewAll = function() {
				$('#norecorddiv').hide();
				$('#nomorerecorddiv').hide()
				var TypeId=2;
		
				$http(
						{
							method : 'POST',

							url : contextPath + '/client/showSentSMS?params='
									+ '2' + '&userId=' + userId + "&pageNumber="
									+ $scope.pageNumber,
							data : {

								params : TypeId,
								userId : userId,
								pageNumber : $scope.pageNumber

							},
						}).success(
						function(data, status, headers, config) {
							debugger;
							if (data == '') {
								$('#norecorddiv').show();
								$('#nomorerecorddiv').hide();
								$('#backButton').show();
								$('#tablediv').hide();

								$('#forminline').show();
								$('#emailtablediv').hide();
								$('#infodiv').hide();
								
							} else {
								
								$scope.sentsms = data;
								$scope.curPage =0;			
								$scope.count = 0;
						
								$scope.numberOfPages = function() {
									return Math.ceil($scope.sentsms.length
											/ $scope.pageSize);
								};
								$('#norecorddiv').hide();
								$('#tablediv').show();
								$('#nomorerecorddiv').hide();
								$('#emailtablediv').show();
								$('#infodiv').hide();
								$scope.sort = function(keyname) {
									$scope.sortKey = keyname; // set the sortKey
																// to the param
																// passed
									$scope.reverse = !$scope.reverse; // if true
																		// make it
																		// false and
																		// vice
																		// versa
								}

							}
							$('#LoadingImageDiv').hide();
						}).error(function(data, status, headers, config) {
					debugger;
					$('#LoadingImageDiv').hide();
				});
				
				
				$('#viewall').hide();
				$('#viewtodays').show();
			}
			
			
			$scope.viewTodays= function() {
				$('#norecorddiv').hide();
				$('#nomorerecorddiv').hide()
				var TypeId=1;
				$scope.pageNumber = 1;
				$('#LoadingImageDiv').show();

						$http(
						{
							method : 'POST',

							url : contextPath + '/admin/getSubscriptionRequest?startdate='+$scope.date+"&enddate="+$scope.date1,
							data : {

								params : TypeId,
								userId : userId,
						
							},
						}).success(
						function(data, status, headers, config) {
							debugger;
							$('#LoadingImageDiv').hide();

							if (data == '') {
								$('#norecorddiv').show();
								$('#backButton').show();
								$('#nomorerecorddiv').hide();

								$('#forminline').show();
								$('#tablediv').hide();
								$('#infodiv').hide();
								
							} else {
								$('#LoadingImageDiv').hide();

								$('#norecorddiv').hide();
								$('#nomorerecorddiv').hide()
								$scope.sentsms = data;
								$scope.curPage =0;
								$scope.count = 0;
//								$scope.pageSize = 10;
								$scope.pageNumber=	$scope.pageNumber+1;
								$('#tablediv').show();
						

								$('#emailtablediv').show();
								$('#infodiv').hide();
								$scope.numberOfPages = function() {
									return Math.ceil($scope.sentsms.length
											/ $scope.pageSize);
								};

								$scope.sort = function(keyname) {
									$scope.sortKey = keyname; // set the sortKey
																// to the param
																// passed
									$scope.reverse = !$scope.reverse; // if true
																		// make it
																		// false and
																		// vice
																		// versa
								}

							}
						}).error(function(data, status, headers, config) {
					debugger;
					$('#LoadingImageDiv').hide();
				});
				
				
				$('#viewall').show();
				$('#viewtodays').hide();
			
			}

			

		} ])


angular.module('helloApp').filter('pagination', function()
		{
		 return function(input, start)
		 
		 {
			 
		  start = start;
			 
		  return input;
		 };
		});

angular.module('helloApp').filter('removePlus', function () {
    return function (text) {
		
		var str = text.replaceAll("+",' ');
		return str;
    };
})



angular.module('helloApp').filter('dateFilter', function() {
    return function(text) {

    var st = ""+text;
    	var pattern = /(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})/;
    	var rettext =st.replace(pattern, '$1-$2-$3 $4:$5:$6');
        return  rettext;
    }
});

angular.module('helloApp').filter('split', function() {
	        return function(input, splitChar, splitIndex) {
	            // do some bounds checking here to ensure it has that index
	            return input.split(splitChar)[splitIndex];
	        }
	    });


angular.module('helloApp').filter('statusFilter', function() {
	        return function(input) {
	            // do some bounds checking here to ensure it has that index
	            return input.split(splitChar)[splitIndex];
	        }
	    });



/*
 * 
 * angular.module('helloApp').filter('pagination', function() { return
 * function(input, start) { start = start; return input.slice(start); }; });
 * 
 * 
 * 
 * 
 * angular.module('helloApp ') .filter('isEmpty', function () { var bar; return
 * function (obj) { for (bar in obj) { if (obj.hasOwnProperty(bar)) { return
 * false; } } return true; }; });
 */

/*});*/