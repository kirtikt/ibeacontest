<html>
<head>

<script src="http://code.jquery.com/jquery.min.js"></script>

</head>
<body>
	  <div id="login-page">
	  	<div class="container">
	  	
		      <form class="form-login" action='${pageContext.request.contextPath}/j_spring_security_check' method="post">
		        <h2 class="form-login-heading">LOG IN </h2>
		        <div class="login-wrap">
		            <input id="usern" type="text" class="form-control"  name="j_username" placeholder="Username" autofocus required="required" >
		            <br>
		            <input type="password" id="passw" name="j_password" class="form-control" placeholder="Password" required="required">
		            
		             <br>
		             		  
		             
		             
		           	

		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal"> Forgot Password?</a>
		
		                </span>
		            </label>
		            <button id="signin" class="btn btn-theme btn-block" href="index.html" type="submit" style="color: #8d8d8d"><i class="fa fa-lock"></i> SIGN IN</button>
		            <hr>
		            
		                 <div class="registration">
		                Don't have an account yet?<br/>
		                <a class="" href="${pageContext.request.contextPath}/RegisterUsernow">
		                    Create an account
		                </a>
		            </div>
		
		        </div>
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      
		                      <div class="modal-body">
		                          <p>Enter your e-mail address below to reset your password.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <button class="btn btn-theme" id="submit" type="button">Submit</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </form>	  	
	  	
	  	</div>
	  </div>
	  
	  
	  
<script type="text/javascript">


$(document).ready(function () {
	var pass;

	$('#signin').click(function(){
		$('#jpass').val($('#passw').val() + '~' +$('#clientref').val());
return true;
		
		});

		/* $('#clientref').on('blur',function(){
			$('#jpass').val($('#passw').val() + '~' +$('#clientref').val());
			});
		 */
	
		
	
	  });

</script>
</body>
	 </html>
	 