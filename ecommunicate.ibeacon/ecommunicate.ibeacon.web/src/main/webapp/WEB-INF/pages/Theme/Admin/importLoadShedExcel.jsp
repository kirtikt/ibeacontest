<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="${pageContext.request.contextPath}/assets/js/dirPagination.js"></script>
<!-- start:main -->
<div class="container" style="position: relative;">
	<input type="hidden" value="${pageContext.request.contextPath}"
		id="contextPath">
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
			<li class="active">Import Excel File</li>
		</ol>
		<!-- end:breadcrumb -->

		<h3 style="position: relative; left: 35%; top: 75%">
			<i class="fa fa-envelope-square"></i>&nbsp; Manage areas
		</h3>

		<c:if test="${not empty message}">
			<div id="noFile" class="alert alert-success"
				style="position: relative; top: 10;">
				<b>${message}</b>
			</div>
		</c:if>





		<form id="fileupload"
			action="${pageContext.request.contextPath}/admin/uploadLoadShed"
			method="POST" enctype="multipart/form-data">
			<noscript>
				<input type="hidden" name="redirect"
					value="http://blueimp.github.io/jQuery-File-Upload/">
			</noscript>

			<div class="row fileupload-buttonbar">

				<div class="col-lg-7">

					<span class="btn btn-success fileinput-button"
						data-original-title="" title=""> <span style="color: black">

							<b> Upload Area Code File </b>
					</span> <span class="btn btn-success fileinput-button"
						data-original-title="" title=""> <span></span> <input
							type="file" multiple="" name="file">
					</span>
					<b> Enter Province Name </b>
					<input type="text" name="province" value="capetown">
						<button class="btn btn-primary start" type="submit"
							data-original-title="" title="">
							<i class="glyphicon glyphicon-upload"></i> <span>Start
								upload</span>
						</button> <span class="fileupload-process"></span>
				</div>
				</span>





			</div>

		</form>



		<div class="row" style="position: relative; top: 60%; display: none;"
			id=tablediv>
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading">
						<b>All Block Numbers And Area Code </b>
					</header>
					<div class="panel-body">
						<div class="adv-table">
							<table
								class="display table table-bordered table-striped table-hover table table-bordered"
								id="example"
								style="table-layout: fixed; width: 100%; font-size: 12px; word-wrap: break-word;">
								<thead>
									<tr>
										<th>Index</th>
										<th>Day Of Month</th>
										<th>Time From</th>
										<th>Time To</th>
										<th>Block Number</th>
										<th>Edit/Delete</th>



									</tr>
								</thead>
								<tbody>
									<tr class="gradeA"
										dir-paginate="area in loadshed|filter:search|itemsPerPage:pageSize">

										<td>{{$index+1}}</td>
										<td>
											<div ng-hide="editingData[area.id]">{{area.dayOfMonth |
												uppercase}}</div>
											<div ng-show="editingData[area.id]">
												<input type="text" ng-model="area.dayOfMonth" />
											</div>
										</td>
										<td>
											<div ng-hide="editingData[area.id]">{{area.timeFrom}}</div>
											<div ng-show="editingData[area.id]">
												<input type="text" ng-model="area.timeFrom" />
											</div>
										</td>

<td>
											<div ng-hide="editingData[area.id]">{{area.timeTo |
												uppercase}}</div>
											<div ng-show="editingData[area.id]">
												<input type="text" ng-model="area.timeTo" />
											</div>
										</td>
										
										<td>
											<div ng-hide="editingData[area.id]">{{area.blockNumber |
												uppercase}}</div>
											<div ng-show="editingData[area.id]">
												<input type="text" ng-model="area.blockNumber" />
											</div>
										</td>
										<td>
											<button class="" ng-hide="editingData[area.id]"
												ng-click="modify(area)">Modify</button>
											<button class="" ng-show="editingData[area.id]"
												ng-click="update(area)">Update</button>
											<button ng-click="remove(area)">Remove</button>
										</td>


									</tr>
								</tfoot>
							</table>
						</div>
					</div>

					<dir-pagination-controls max-size="50" direction-links="true"
						boundary-links="true"> </dir-pagination-controls>

				</section>
			</div>
		</div>

		<!-- start:dynamic data table -->






	</div>


</div>







<script
	src="${pageContext.request.contextPath}/assets/js/CustomJs/importLoadShedExcel.js"></script>
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/vendor/jquery.ui.widget.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script
	src="http://blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script
	src="http://blueimp.github.io/JavaScript-Load-Image/js/load-image.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script
	src="http://blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>

<!-- blueimp Gallery script -->
<script
	src="http://blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/jquery.fileupload-ui.js"></script>
<!-- The main application script -->
<script
	src="${pageContext.request.contextPath}/Theme2/assets/file-uploader/js/main.js"></script>
<!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
<!--[if (gte IE 8)&(lt IE 10)]>
    <script src="assets/file-uploader/js/cors/jquery.xdr-transport.js"></script>
    <![endif]-->

<!-- The template to display files available for upload -->

<!-- The template to display files available for download -->


