<%@ include file="header.jsp"%>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="header">
						<a href="${SITE_URL}/admin/notes/add"><button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-plus">    Add </span></button></a>
					</div>
					<div class="content table-responsive table-full-width">
						<table class="table table-hover table-striped">
							<thead>
								<th>ID</th>
								<th>Title</th>
								<th>Details</th>
							</thead>
							<tbody>
								<c:forEach var="notes" items="${notes}">

									<tr>
										<td>${notes.id}</td>
										<td>${notes.title}</td>
										<td>${notes.details}</td>

										<td><a href="${SITE_URL}/admin/notes/edit/${notes.id}"><button
													type="button" class="btn btn-success">
													<span class="glyphicon glyphicon-pencil"> Edit</span>
												</button></a></td>
										<td><a
											href="${SITE_URL}/admin/notes/delete/${notes.id}"
											onclick="return confirm('Are you sure want to delete it?')"
											class="btn btn-danger"><span
												class="glyphicon glyphicon-trash"></span> Delete</a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>

					</div>
				</div>
			</div>


			

<%@ include file="footer.jsp"%>
</div>
</div>
</body>
</html>