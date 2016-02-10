
<%@ page import="com.lftechnology.amllist.Pep"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'pep.label', default: 'Pep')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div id="list-pep" class="content scaffold-list" role="main">
		<div style="display: inline;">
			<h1 style="display: inline-block;">
				<g:message code="default.list.label" args="[entityName]" />
			</h1>
			<span style="float: right; margin-top: 10px">
				<g:link controller="pep" action="create">
					<i class="fa fa-plus-circle"></i>
									Create New PEP
								</g:link>
			</span>
		</div>
		<table id="pep-list-table">
			<thead>
				<tr>

					<g:sortableColumn property="firstName" title="${message(code: 'pep.fullname.label', default: 'Full Name')}" />

					<g:sortableColumn property="aliasName" title="${message(code: 'pep.aliasName.label', default: 'Alias Name')}" />

					<g:sortableColumn property="nationalityOrCitizenship" title="${message(code: 'pep.aliasName2.label', default: 'Nationality')}" />

					<g:sortableColumn property="gender" title="${message(code: 'pep.gender.label', default: 'Gender')}" />

					<g:sortableColumn property="description" title="${message(code: 'pep.gender.label', default: 'Description')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${pepInstanceList}" status="i" var="pepInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td>
							<g:link action="edit" id="${pepInstance.id}">
								${pepInstance}
							</g:link>
						</td>

						<td>
							${fieldValue(bean: pepInstance, field: "aliasName")}
						</td>

						<td>
							${fieldValue(bean: pepInstance, field: "nationalityOrCitizenship")}
						</td>

						<td>
							${fieldValue(bean: pepInstance, field: "gender")}
						</td>

						<td>
							${fieldValue(bean: pepInstance, field: "description")}
						</td>

					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#pep-list-table')
									.DataTable(
											{
												"bLengthChange" : false,
												"pageLength" : 50,
												"language" : {
													"emptyTable" : "No pep members are registered.",
													"sSearch" : ""
												},
												"order" : [ [ 4, "desc" ] ],
												"fnDrawCallback" : function() {
													if ($(
															'#pep-list-table_paginate span a.paginate_button')
															.size() <= 1) {
														$(
																'#pep-list-table_paginate a.next')
																.hide();
														$(
																'#pep-list-table_paginate a.previous')
																.hide();
													}
												}
											});
						});
	</script>
</body>
</html>
