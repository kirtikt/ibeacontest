            		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            			<script src="${pageContext.request.contextPath}/assets/js/jquery.sparkline.js"></script>
            		
	<script src="${pageContext.request.contextPath}/assets/js/common-scripts.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/gritter/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/gritter-conf.js"></script>

        <!-- start:main -->
        <div class="container" style="position: relative;">
            <div id="main">
                <!-- start:breadcrumb -->
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/admin/home">Home</a></li>
                    <li class="active">   Add User</li>
                </ol>
                <!-- end:breadcrumb -->
    <div class="row">
                    <div class="col-lg-12">
                        <h2 class="page-header">
                          Add User
                        </h2>
                    </div>
                </div>




   <div class="row">
                    <div class="col-lg-12">
                        <section class="panel" style="position: relative; width: 50%;left: 30%">
                            <header class="panel-heading">
                           
                            </header>
                            
                             <div class="panel panel-success panel-drop" id="successpanel" style="display: none">
                            <div class="panel-heading">
                                <header class="panel-title">
								<b>Success</b>                           
								</header>
                            </div>
                            <div class="panel-body">
                          <b>   User Added Successfully</b>
                            </div>
                        </div>
                            
                               <div class="panel panel-success panel-drop" id="failpanel"  style="display: none">
                            <div class="panel-heading">
                                <header class="panel-title">
							<b>Failure</b>	                           
								</header>
                            </div>
                            <div class="panel-body">
                          <b>   Something went wrong... Please try again</b>
                            </div>
                        </div>
                            
                            <div class="panel-body" id="form">
                             
                   
                        
                             
                              <form  class="form-horizontal" id="default" name="addclientform" novalidate role="form"> 
                         
                         
                                         <legend> Authentication Details</legend>
                                      		
		
						
                                      <div class="form-group"  style="position:relative;width:60%;left:20%">
                                        <label><b>User Id </b></label>
                                        <div class="iconic-input right">
                                        
                                          <input type="text" name="userid" id="userid" class="form-control"
										 ng-model="formData.username"  
										> </br>
    <span1 ng-bind="span3" id=""  style="color:red;"><b></b></span1>
 
                                        </div>
                                    </div> 
                                    
                                              <div class="form-group"  style="position:relative;width:60%;left:20%">
                                        <label><b>Password</b></label>
                                        <div class="iconic-input right">
                                        
                                    <input type="password" name="password" id="password" class="form-control"
										ng-model="formData.password" > </br>

    <span1 ng-bind="span4" id=""  style="color:red;"><b></b></span1>
 
                                        </div>
                                    </div> 
                                    
                                      <legend>Contact Details </legend>
                                     
                                  
                                                              
  <div class="form-group"  style="position:relative;width:60%;left:20%">
                                        <label><b>Email
								</b></label>
                                        <div class="iconic-input right">
                                        
                                            <input type="email" class="form-control" name="primaryEmailAddress" value=""  ng-model="formData.emailId">
 
                                        </div>
                                    </div>
						
					


  <div class="form-group"  style="position:relative;width:60%;left:20%">
                                        <label><b>Mobile
								No</b></label>
                                        <div class="iconic-input right">
                                        
                                            <input type="text" class="form-control" name="mobileNumber" value="" ng-pattern="/^-?[0-9]\d*(\.\d+)?$/" ng-model="formdata.mobileNumber">

 
                                        </div>
                                         	<div class="custom-error"	ng-show="addclientform.mobileNumber.$error.pattern" style="color: red;">
											<b>Please Enter valid Cell Number</b>
										</div>
                                    </div>
          	
					  <div class="form-group"  style="position:relative;width:60%;left:20%">
                                        <label><b>Landline
								No</b></label>
                                        <div class="iconic-input right">
                                        
                                            <input type="text" class="form-control" name="landlineNumber" value="" ng-pattern="/^-?[0-9]\d*(\.\d+)?$/" ng-model="formdata.landlineNumber">
 
                                   </div>
                                    	<div class="custom-error"	ng-show="addclientform.landlineNumber.$error.pattern" style="color: red;">
											<b>Please Enter valid Landline Number</b>
										</div>
                                    </div>		
                             		
								
						
							 <div class="form-group"  style="position:relative;width:60%;left:20%">
                                      <label><b>User
									Role</b></label>
                                        <div class="iconic-input right">
                                        
                                      	<select name="userrole" class="form-control"
										ng-model="formData.userrole">

										<option>user</option>
										<option selected="selected">sysadmin</option>

									</select> </br>
                                        </div>
                                    </div>
                                    
                                    
                             
                      
						
                                  
 
                                    
                                    
                            <button style="position: relative; left: 70%" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Submit</button>
                                     
                                
                               <!--    <button type="submit" class="finish btn btn-danger"  ng-click="processForm()"
								ng-disabled="addclientform.clientName.$dirty && addclientform.clientName.$invalid">Submit</button>
                            -->                                                         
                            
                             
                             
                            <!--   <div class="form-group">
                                        <div class="col-lg-offset-2 col-lg-10">
                                            <button  class="btn btn-danger">Send SMS</button>
                                                                            <button class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-sm">Submit</button>
                                            
                                                                                        <button ng-click="cancel()" class="btn btn-danger">Cancel</button>
                       -->                                                                  
                                                                                        
       
                                <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" style="display: none;">
                                    <div class="modal-dialog modal-sm">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h4 class="modal-title" id="mySmallModalLabel"><b>Confirm</b></h4>
                                            </div>
                                            <div class="modal-body">
                                             <p><b>Click Yes To Add User</b> </p>
                                             
                                               
                                              <button type="button" class="btn btn-primary" ng-click="processForm()"  data-dismiss="modal">Yes</button>
                                                    <button type="button" class="btn btn-primary" data-dismiss="modal" >cancel</button>
                                         
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             
                                            
                                    </form></div></section></div></div></div></div>
                             
         
       
        
   	<script
		src="${pageContext.request.contextPath}/assets/js/CustomJs/addclient.js"></script>
   
   
   
  

    