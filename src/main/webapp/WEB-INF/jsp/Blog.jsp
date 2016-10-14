<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<div data-ng-controller="BlogController">
	<sec:authorize access="isAuthenticated()">
		<form role="form" data-ng-submit="submit()"
			data-ng-controller="BlogController">
			<br><h3 align="center">Create Blog</h3>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Blog Id" data-ng-model="blogid" data-ng-show="blogid" data-ng-disabled="blogid">
			</div>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Blog Title" data-ng-model="blogName">
			</div>
			<div class="form-group">
				<label for="formdata">Blog Description</label>
				<textarea draggable="false" style="resize: none" id="formdata"
					class="form-control " rows="10" data-ng-model="blogDesc"></textarea>
			</div>
			<div align="right">
				<button type="submit" class="btn btn-info">Save Blog</button>
			</div>
		</form>
	</sec:authorize>
	<br>
	<div data-ng-init="getAllBlogs()">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Blog ID</th>
					<th>Blog Name</th>
					<th>Blog Description</th>
					<th>View Blog</th>
					<sec:authorize access="isAuthenticated()">   
						<th>Delete/Edit</th>
						
						</sec:authorize>
						
					<%-- <sec:authorize access="isAuthenticated()">   
						<th>Delete Blog</th>
						<th>Edit Blog</th>
					</sec:authorize> --%>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="blog in blogs">
					<td>{{blog.bid}}</td>
					<td>{{blog.blogName}}</td>
					<td>{{blog.blogDesc}}</td>
					
					<td width="5%"><a href="blog/{{blog.bid}}" class="btn btn-primary btn-xs">View</a></td> 
							<sec:authorize access="isAuthenticated()">
							 <td data-ng-show="accessBlog(blog.b_userid)">
 									<a class="btn btn-primary btn-xs"
 										data-ng-click="deleteBlog(blog.bid)">Delete</a> 
 									<a	class="btn btn-primary btn-xs"
 										data-ng-click="editBlog(blog.bid)">Edit</a>
 								</td> 
						 <!-- <div data-ng-if="accessBlog(blog.b_userid)">
						<td><button data-ng-click="deleteBlog(blog.bid)"
								class="btn btn-xs  btn-block btn-info">Delete</button></td>
						<td><button data-ng-click="editBlog(blog.bid)"
								class="btn btn-xs  btn-block btn-info">Edit</button></td>
								</div>  -->
					</sec:authorize>
				
				 <!-- <td width="5%"><a href="blog/{{blog.bid}}" class="btn btn-primary btn-xs">View</a></td>  -->
  				</tr>
			</tbody>
		</table>
	</div>
	
	<%-- <script
		src="${pageContext.request.contextPath}/resources/js/AngularControllers/Blog.js"></script> --%>
		<input type="text" value="${sessionScope.userid}" style="margin-top: 75px" id="userid" hidden="true" />
 <script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Blog.js"></script>
</div>

