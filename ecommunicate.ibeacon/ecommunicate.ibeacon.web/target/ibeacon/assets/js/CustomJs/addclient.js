var app = angular.module('helloApp', []);



app.controller('HttpController', [
                          		'$scope','$window','$rootScope','$location', '$anchorScroll',
		'$http',
                        		function($scope,$window,$rootScope,$location, $anchorScroll, $http)  {
                          		  $scope.formData = {};
     		
   
          $scope.formData.userrole='Admin'
        	      $scope.formData.username='';
      $scope.formData.password='';
  	
		$scope.reloadRoute = function() {
			   $window.location.reload();
			}
		
 

	  
	  $scope.processForm = function() {
		  debugger;
//		  $scope.isEmclientName = $scope.formData.clientName.$error.required;
//		    $scope.isInvalidEmail = $scope.form.uEmail.$error.email;
		  $scope.span1='';
		  $scope.span2='';
		  $scope.spa3='';
		  $scope.span4='';
		  $scope.span5='';

				
			  if($scope.formData.username==''){
				  
				  $scope.span3 = 'Please enter userid';

	      	    
				  return;
			  }
			  
	
 
 
 if($scope.formData.password==''){
	  
	  $scope.span4 = 'Please enter password';
	
	  return;
 }
 
			  
			  
			  
				var response = $http.post('SaveUser', $scope.formData);
				response.success(function(data, status, headers, config) {
					if(data=='true'){
					 
						$('#form').hide();

						$('#successpanel').show();
						
//					 window.location = "viewClient"
					}else{
						$('#form').hide();

						$('#failpanel').show();
						
					}
	});
				response.error(function(data, status, headers, config) {
					$('#form').hide();

					$('#failpanel').show();
									});
			     //Your action will goes here
		
			    
	    };
	}])
