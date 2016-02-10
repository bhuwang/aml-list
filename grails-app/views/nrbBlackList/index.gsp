
<%@ page import="com.lftechnology.amllist.NrbBlackList"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'nrbBlackList.label', default: 'NrbBlackList')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<div id="list-nrbBlackList" class="content scaffold-list" role="main">
		<div style="display: inline;">
			<h1 style="display: inline-block;">
				<g:message code="default.lists.label" default="NRB Black List" />
			</h1>
			<span style="float: right; margin-top: 10px">
				<g:link controller="nrbBlackList" action="create">
					<i class="fa fa-plus-circle"></i>
									Create New NRB List
								</g:link>
			</span>
		</div>
		<table id="nrb-black-list-table">
			<thead>
				<tr>

					<g:sortableColumn property="blackListNo" title="${message(code: 'nrbBlackList.blackListNo.label', default: 'Black List No')}" />

					<g:sortableColumn property="date" title="${message(code: 'nrbBlackList.date.label', default: 'Date')}" />

					<g:sortableColumn property="borrowerName" title="${message(code: 'nrbBlackList.borrowerName.label', default: 'Borrower Name')}" />

					<g:sortableColumn property="assocPersonOrCompany"
						title="${message(code: 'nrbBlackList.assocPersonOrCompany.label', default: 'Assoc Person Or Company')}" />

					<g:sortableColumn property="type" title="${message(code: 'nrbBlackList.type.label', default: 'Type')}" />

					<g:sortableColumn property="dateCreated" title="${message(code: 'nrbBlackList.dateCreated.label', default: 'Date Created')}" />

				</tr>
			</thead>
			<tbody>
				<g:each in="${nrbBlackListInstanceList}" status="i" var="nrbBlackListInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td>
							<g:link action="edit" id="${nrbBlackListInstance.id}">
								${fieldValue(bean: nrbBlackListInstance, field: "blackListNo")}
							</g:link>
						</td>

						<td>
							<g:formatDate date="${nrbBlackListInstance.date}" />
						</td>

						<td>
							${fieldValue(bean: nrbBlackListInstance, field: "borrowerName")}
						</td>

						<td>
							${fieldValue(bean: nrbBlackListInstance, field: "assocPersonOrCompany")}
						</td>

						<td>
							${fieldValue(bean: nrbBlackListInstance, field: "type")}
						</td>

						<td>
							<g:formatDate date="${nrbBlackListInstance.dateCreated}" />
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
							$('#nrb-black-list-table')
									.DataTable(
											{
												"bLengthChange" : false,
												"pageLength" : 50,
												"language" : {
													"emptyTable" : "No NRB Black List members are registered.",
													"sSearch" : ""
												},
												"order" : [ [ 4, "desc" ] ],
												"fnDrawCallback" : function() {
													if ($(
															'#nrb-black-list-table_paginate span a.paginate_button')
															.size() <= 1) {
														$(
																'#nrb-black-list-table_paginate a.next')
																.hide();
														$(
																'#nrb-black-list-table_paginate a.previous')
																.hide();
													}
												}
											});
						});
	</script>
</body>
</html>
