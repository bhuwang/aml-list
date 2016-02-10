
<%@ page import="com.lftechnology.amllist.NrbBlackList" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'nrbBlackList.label', default: 'NrbBlackList')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-nrbBlackList" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-nrbBlackList" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list nrbBlackList">
			
				<g:if test="${nrbBlackListInstance?.blackListNo}">
				<li class="fieldcontain">
					<span id="blackListNo-label" class="property-label"><g:message code="nrbBlackList.blackListNo.label" default="Black List No" /></span>
					
						<span class="property-value" aria-labelledby="blackListNo-label"><g:fieldValue bean="${nrbBlackListInstance}" field="blackListNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nrbBlackListInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="nrbBlackList.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${nrbBlackListInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${nrbBlackListInstance?.borrowerName}">
				<li class="fieldcontain">
					<span id="borrowerName-label" class="property-label"><g:message code="nrbBlackList.borrowerName.label" default="Borrower Name" /></span>
					
						<span class="property-value" aria-labelledby="borrowerName-label"><g:fieldValue bean="${nrbBlackListInstance}" field="borrowerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nrbBlackListInstance?.assocPersonOrCompany}">
				<li class="fieldcontain">
					<span id="assocPersonOrCompany-label" class="property-label"><g:message code="nrbBlackList.assocPersonOrCompany.label" default="Assoc Person Or Company" /></span>
					
						<span class="property-value" aria-labelledby="assocPersonOrCompany-label"><g:fieldValue bean="${nrbBlackListInstance}" field="assocPersonOrCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nrbBlackListInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="nrbBlackList.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${nrbBlackListInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${nrbBlackListInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="nrbBlackList.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${nrbBlackListInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${nrbBlackListInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="nrbBlackList.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${nrbBlackListInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:nrbBlackListInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${nrbBlackListInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
