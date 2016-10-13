  <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>


<div data-ng-controller="ForumController">
	<sec:authorize access="isAuthenticated()">
		<form role="form" data-ng-submit="submit()"
			data-ng-controller="ForumController">
			<br><h3 align="center">Create Forum</h3>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Forum Id" data-ng-model="forumid" data-ng-show="forumid" data-ng-disabled="forumid">
			</div>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Forum Title" data-ng-model="forumName">
			</div>
			<div class="form-group">
				<label for="formdata">Forum Description</label>
				<textarea draggable="false" style="resize: none" id="formdata"
					class="form-control " rows="11" data-ng-model="forumDesc"></textarea>
			</div>
			<div align="right">
				<button type="submit" class="btn btn-info">Save Forum</button>
			</div>
		</form>
	</sec:authorize>
	<br>
	<div data-ng-init="getAllForums()">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>Forum ID</th>
					<th>Forum Name</th>
					<th>Forum Description</th>
					<th>View Forum</th>
					<sec:authorize access="isAuthenticated()">   
						<th>Delete/Edit</th>
						
						</sec:authorize>
						
				
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="forum in forums">
					<td>{{forum.fid}}</td>
					<td>{{forum.forumName}}</td>
					<td>{{forum.forumDesc}}</td>
					<sec:authorize access="isAuthenticated()">
						<!-- <td><button data-ng-click="deleteForum(forum.fid)"
								class="btn btn-xs btn-info">Delete</button></td>
						<td><button data-ng-click="editForum(forum.fid)"
								class="btn btn-xs btn-info">Edit</button></td>
								<td><a href="Forum/{{(forum.fid)}}"
								class="btn btn-xs btn-info">View</a></td> -->
									
									<td width="5%"><a href="Forum/{{forum.fid}}" class="btn btn-primary btn-xs">View</a></td>
							<td data-ng-show="accessForum(forum.f_userid)">
 									<a class="btn btn-primary btn-xs"
 										data-ng-click="deleteForum(forum.fid)">Delete</a> 
 									<a	class="btn btn-primary btn-xs"
 										data-ng-click="editForum(forum.fid)">Edit</a>
 								</td>
					</sec:authorize>
					
				
			
				</tr>
			</tbody>
		</table>
	</div>
	
	
		<input type="text" value="${sessionScope.userid}" style="margin-top: 75px" id="userid" hidden="true" />
		
 <script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Forum.js"></script>
</div>

