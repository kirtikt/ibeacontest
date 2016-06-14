<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="${pageContext.request.contextPath}/assets/js/dirPagination.js"></script>
<%--     <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/js/gritter/css/jquery.gritter.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/lineicons/style.css">
     --%>


<input type="hidden" value="${userId}" id="userId">
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
						href="${pageContext.request.contextPath}/client/clientSuccess">Home</a></li>
				</c:otherwise>
			</c:choose>
			
		</ol>
		<!-- end:breadcrumb -->
	
				<h3 style="position: relative; left: 35%; top: 75%">
					<i class="fa fa-envelope-square"></i>&nbsp; Update URLs				</h3>
			
		<div id="norecorddiv" class="alert alert-success"
			style="display: none; position: relative; top: 10;">
			<b>No Records to Display</b>
		</div>


		<div class="form-group" id="backButton" style="display: none">
			<div class="col-lg-offset-2 col-lg-10">
				<button
					style="position: relative; top: -50; left: 380; width: 100; height: 30;"
					class="btn btn-danger" ng-click="goBack()" data-original-title=""
					title="">
					<i class="fa fa-mail-reply"></i>&nbsp;Go Back
				</button>
			</div>
		</div>

	

		<form class="form-inline ng-valid ng-dirty ng-pristine"
			id="forminline" style="position: relative; top: -6%;display: none;">
			<br>
			<div style="width: 50%" class="form-group">
				<label>Search</label> <input type="text" ng-model="search"
					class="form-control ng-pristine ng-valid" placeholder="Search">&nbsp;

				<label for="records">Records:</label> <input type="number" min="1"
					max="100"
					class="form-control ng-valid ng-valid-number ng-valid-max ng-valid-min ng-dirty ng-pristine"
					ng-model="pageSize">
			</div>

		</form>
		
		<div class="row" style="position: relative; top: 60%;display: none;" id=tablediv>
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading">All Contacts </header>
					<div class="panel-body">
						<div class="adv-table">
							<table
								class="display table table-bordered table-striped table-hover table table-bordered"
								id="example"
								style="table-layout: fixed; width: 100%; font-size: 12px; word-wrap: break-word;">
								<thead>
									<tr>
		<th > Index</th>
										<th > URL</th>
										<th >Url Key</th>
										<th>Edit/Remove
										</th>
						
											
											
									
									</tr>
								</thead>
								<tbody>
									<tr class="gradeA" dir-paginate="contact in contactdata| orderBy:sortKey:reverse|filter:search|itemsPerPage:pageSize">
								
											<td>{{$index+1}}</td>
										<td>
											<div ng-hide="editingData[contact.id]">{{contact.url}}</div>
											<div ng-show="editingData[contact.id]">
												<input type="text" ng-model="contact.url" />
											</div>
										</td>
										<td>
											<div ng-hide="editingData[contact.id]">{{contact.urlKey}}</div>
											<div ng-show="editingData[contact.id]">
												<input type="number" ng-model="contact.urlKey" />
											</div>
										</td>
										
										<td>
											<button class="" ng-hide="editingData[contact.id]"
												ng-click="modify(contact)">Modify</button>
											<button class="" ng-show="editingData[contact.id]"
												ng-click="update(contact)">Update</button>
											<button ng-click="remove(contact)">Remove</button>
										</td>


										</tr>
									
									
									
								</tfoot>
							</table>
						</div>
					</div>

							<dir-pagination-controls max-size="50" direction-links="true"
								boundary-links="true"> </dir-pagination-controls>
				
				</section>




<section class="panel"
					style="">
						<form class="form-group" style="position: relative;">

							<button ng-click="addNewChoice()" class="btn btn-danger"
								style="">
								<span class="glyphicon glyphicon-plus-sign"
									style="vertical-align: middle"></span> Add New
							</button>

							<div class="alert alert-success alert-outline alert-dismissable" id="addmore"
								style="display: none; width: 50%;position:relative; left:25%; border-radius: 15%;">
								Add New Contact Details
								<!-- abel for="choice" style="margin: 10 40; position: fixed;top:350">Add Prefix And Mno
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										
										</label> 
 -->
								<div class="form-group" data-ng-repeat="choice in choices"
									style="position: relative;">

									<div style="border: 2px ridge rgb(63, 138, 176);">
<span1 id="span1" style="color:red ;display:none"><b>Please insert mno and prefix</b></span1>
										<input type="text" ng-model="choice.url" name=""
											id="choice.id" class="form-control" placeholder="URL"
											style="width: 80%;position:relative;left:9%;margin:6px 0px 0px 0px">
										
										
											<input type="number" ng-model="choice.urlKey" name=""
											id="choice.id" class="form-control" placeholder="Key"
											style="width: 80%;position:relative;left:9%;margin:6px 0px 0px 0px">
									
										
									</div>
								</div>

								<button id="submit" type="submit" ng-click="submit()"
									class="btn btn-danger" style="margin: 10 40;">
									<i class="fa fa-check"></i> Submit
								</button>
								<button class="btn btn-success"
											ng-click="removeItem(choice.id)"
											style="">
											<span id="remove" class="glyphicon glyphicon-remove-sign">&nbsp;Remove</span>
										</button>
							</div>
						</form>

				</section>

			</div>



		</div>

	




	</div>


</div>







<script
		src="${pageContext.request.contextPath}/assets/js/CustomJs/updateurl.js"></script>
  <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/vendor/jquery.ui.widget.js"></script>
    <!-- The Templates plugin is included to render the upload/download listings -->
    <script src="http://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
    <!-- The Load Image plugin is included for the preview images and image resizing functionality -->
    <script src="http://blueimp.github.io/JavaScript-Load-Image/js/load-image.min.js"></script>
    <!-- The Canvas to Blob plugin is included for image resizing functionality -->
    <script src="http://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>

    <!-- blueimp Gallery script -->
    <script src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
    <!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.iframe-transport.js"></script>
    <!-- The basic File Upload plugin -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload.js"></script>
    <!-- The File Upload processing plugin -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-process.js"></script>
    <!-- The File Upload image preview & resize plugin -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-image.js"></script>
    <!-- The File Upload audio preview plugin -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-audio.js"></script>
    <!-- The File Upload video preview plugin -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-video.js"></script>
    <!-- The File Upload validation plugin -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-validate.js"></script>
    <!-- The File Upload user interface plugin -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-ui.js"></script>
    <!-- The main application script -->
    <script src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/main.js"></script>
    <!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
    <!--[if (gte IE 8)&(lt IE 10)]>
    <script src="assets/file-uploader/js/cors/jquery.xdr-transport.js"></script>
    <![endif]-->

    <!-- The template to display files available for upload -->

    <!-- The template to display files available for download -->
   
		
		