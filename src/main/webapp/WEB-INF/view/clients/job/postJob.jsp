<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/clients/common/clientHeader.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="container-fluid">
	<h2 class="text-center ">Post a new job</h2>


	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<form action="/client/job/save" method="POST" enctype="multipart/form-data">

				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Category:</label>
					<div class="col-sm-9">
						<select id="category_code" class="form-control" name="category_code">
							<c:forEach items="${categories}" var="category">
								<option value="${category.code}">${category.name}</option>
							</c:forEach>
						</select>
						<input type="hidden" name="category" id="category"/>
					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Code:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="code" name="code">
					</div>
				</div>

				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Title:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="title" name="title">
					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Description:</label>
					<div class="col-sm-9">
						<textarea class="form-control" id="exampleFormControlTextarea1"
							name="description" rows="3"></textarea>
					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Posted
						Time:</label>
					<div class="col-sm-9">
						<input type="date" class="form-control" id="postedTime"
							name="posted_time">
					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Budget:</label>
					<div class="col-sm-9">
						<div class="row">
							<div class="col-sm-6">
								<input type="text" class="form-control" id="budget"
									name="budget">
							</div>
							<div class="col-sm-6">
								<select id="inputState" class="form-control" name="budgetType">
									<option selected value="Fixed project">Fixed project</option>
									<option value="Per Hour">Per Hour</option>
								</select>
							</div>
						</div>

					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Job
						Length:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="jobLength"
							name="jobLength">
					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Skills:</label>
					<div class="col-sm-9">
						<input type="text" class="form-control" id="skill" name="skill">
					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Delivery
						Deadline:</label>
					<div class="col-sm-9">
						<input type="date" class="form-control" id="deliveryDeadline"
							name="delivery_deadline">
					</div>
				</div>
				<div class="form-group row">
					<label for="name" class="col-sm-3 col-form-label">Attachment</label>
					<div class="col-sm-9">
						<input type="file" class="form-control" id="img" name="img">
					</div>
				</div>

				<button type="submit" class="btn btn-save rounded-pill  mt-3 mb-4">Post
					a job</button>


			</form>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>

<%@include file="/WEB-INF/view/clients/common/clientFooter.jsp"%>

<script>
	var today = new Date();
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
	var yyyy = today.getFullYear();
	today = mm + '/' + dd + '/' + yyyy;

	$("#postedTime").click(function() {
		$("#postedTime").val(today);
	});
	
	$("#category").val($("#category_code :selected").text());
	$("#category_code").on("change", function(){
		$("#category").val($("#category_code :selected").text());
	})
	</script>