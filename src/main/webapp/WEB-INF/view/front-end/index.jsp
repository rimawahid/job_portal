<%@include file="/WEB-INF/view/front-end/common/header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<div class="row">
		<div class="col-md-6 mt-5 mb-4">
			<h1 class="h-heading mb-4">
				How work <br> should work
			</h1>
			<p class="h-text mb-5">Forget the old rules. You can have the
				best people. Right now. Right here.</p>
			<div class="d-flex">
				<button class="btn btn-success  rounded-pill pr-4 pl-4 mr-3">Find
					Talent</button>
				<button class="btn btn-outline-success  rounded-pill pr-4 pl-4">Find
					Work</button>
			</div>
		</div>
		<div class="col-md-6">
			<img src="/resources/images/banner.jpg" style="height: 475px">
		</div>
	</div>
</div>

<section>
	<div class="container mb-5">
		<h1 class=category-heading>Browse talent by category</h1>
		<p class="text">
			Looking for work? <span ><a style="color:#16A902" href=""> Browse jobs</a></span>
		</p>

		<div class="row mt-5">
		<c:forEach items="${categories}" var="category">
			<div class="col-md-3 mb-4 ">
				<div class="p-3 category-height category-card">
					<h4>${category.name}</h4>
					<div class="d-flex justify-content-between skill-aligne">
						<p><i
						class="fa-solid fa-star star-color"></i>4.85/5</p>
						<p class="">1853 skills</p>
					</div>
				</div>
			</div>
			</c:forEach>


	</div>
</section>


<%@include file="/WEB-INF/view/front-end/common/footer.jsp"%>