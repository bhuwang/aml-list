
<%@ page import="com.lftechnology.amllist.Pep" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pep.label', default: 'Pep')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-pep" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-pep" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list pep">
			
				<g:if test="${pepInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="pep.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${pepInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="pep.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${pepInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="pep.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${pepInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.aliasName}">
				<li class="fieldcontain">
					<span id="aliasName-label" class="property-label"><g:message code="pep.aliasName.label" default="Alias Name" /></span>
					
						<span class="property-value" aria-labelledby="aliasName-label"><g:fieldValue bean="${pepInstance}" field="aliasName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.aliasName2}">
				<li class="fieldcontain">
					<span id="aliasName2-label" class="property-label"><g:message code="pep.aliasName2.label" default="Alias Name2" /></span>
					
						<span class="property-value" aria-labelledby="aliasName2-label"><g:fieldValue bean="${pepInstance}" field="aliasName2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="pep.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${pepInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.placeOfBirth}">
				<li class="fieldcontain">
					<span id="placeOfBirth-label" class="property-label"><g:message code="pep.placeOfBirth.label" default="Place Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="placeOfBirth-label"><g:fieldValue bean="${pepInstance}" field="placeOfBirth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.altPlaceOfBirth}">
				<li class="fieldcontain">
					<span id="altPlaceOfBirth-label" class="property-label"><g:message code="pep.altPlaceOfBirth.label" default="Alt Place Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="altPlaceOfBirth-label"><g:fieldValue bean="${pepInstance}" field="altPlaceOfBirth"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="pep.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${pepInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.altDob}">
				<li class="fieldcontain">
					<span id="altDob-label" class="property-label"><g:message code="pep.altDob.label" default="Alt Dob" /></span>
					
						<span class="property-value" aria-labelledby="altDob-label"><g:formatDate date="${pepInstance?.altDob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="pep.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${pepInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.nationalityOrCitizenship}">
				<li class="fieldcontain">
					<span id="nationalityOrCitizenship-label" class="property-label"><g:message code="pep.nationalityOrCitizenship.label" default="Nationality Or Citizenship" /></span>
					
						<span class="property-value" aria-labelledby="nationalityOrCitizenship-label"><g:fieldValue bean="${pepInstance}" field="nationalityOrCitizenship"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.altNationality}">
				<li class="fieldcontain">
					<span id="altNationality-label" class="property-label"><g:message code="pep.altNationality.label" default="Alt Nationality" /></span>
					
						<span class="property-value" aria-labelledby="altNationality-label"><g:fieldValue bean="${pepInstance}" field="altNationality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.identificationInfo}">
				<li class="fieldcontain">
					<span id="identificationInfo-label" class="property-label"><g:message code="pep.identificationInfo.label" default="Identification Info" /></span>
					
						<span class="property-value" aria-labelledby="identificationInfo-label"><g:fieldValue bean="${pepInstance}" field="identificationInfo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="pep.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${pepInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.familyMembers}">
				<li class="fieldcontain">
					<span id="familyMembers-label" class="property-label"><g:message code="pep.familyMembers.label" default="Family Members" /></span>
					
						<span class="property-value" aria-labelledby="familyMembers-label"><g:fieldValue bean="${pepInstance}" field="familyMembers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="pep.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${pepInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${pepInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="pep.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${pepInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:pepInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${pepInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
