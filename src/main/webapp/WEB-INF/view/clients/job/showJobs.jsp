<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/clients/common/clientHeader.jsp"%>
<div role="tabpanel" id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">All Jobs</h1>
		<table id = "tblShow" class="table table-striped table-hover">
		<thead>
			<tr>
				<th>Code</th>
				<th>Category Name</th>
				<th>Title</th>
				<th>Posted Time</th>
				<th>Budget</th>
				<th>Budget Type</th>
				<th>Delivery Deadline</th>
				<th>Status</th>
				<th>Attachment</th>
				<th>Edit Action</th>
				<th>Delete Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${jobPosts}" var="jobPost">
				<tr>
					<td>${jobPost.code}</td>
					<td>${jobPost.category}</td>
					<td>${jobPost.title}</td>
					<td>${jobPost.posted_time}</td>
					<td>${jobPost.budget}</td>
					<td>${jobPost.budgetType}</td>
					<td>${jobPost.delivery_deadline}</td>
					<td>${jobPost.status}</td>
					<td><a href="${jobPost.attachment}" target="_blank">Download</a>
					</td>

					<td><a href="/client/job/edit/${jobPost.id}">Edit</a></td>
					<td><a href="/client/job/delete/${jobPost.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
</div>
<%@include file="/WEB-INF/view/clients/common/clientFooter.jsp"%>
<script>
	$('#tblShow').DataTable({
		"paging" : true,
		"ordering" : true,
		"info" : true
	});
</script>