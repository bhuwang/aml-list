<%@ page import="com.lftechnology.amllist.NrbBlackList" %>



<div class="fieldcontain ${hasErrors(bean: nrbBlackListInstance, field: 'blackListNo', 'error')} required">
	<label for="blackListNo">
		<g:message code="nrbBlackList.blackListNo.label" default="Black List No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="blackListNo" required="" value="${nrbBlackListInstance?.blackListNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nrbBlackListInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="nrbBlackList.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${nrbBlackListInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: nrbBlackListInstance, field: 'borrowerName', 'error')} required">
	<label for="borrowerName">
		<g:message code="nrbBlackList.borrowerName.label" default="Borrower Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="borrowerName" required="" value="${nrbBlackListInstance?.borrowerName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nrbBlackListInstance, field: 'assocPersonOrCompany', 'error')} ">
	<label for="assocPersonOrCompany">
		<g:message code="nrbBlackList.assocPersonOrCompany.label" default="Assoc Person Or Company" />
		
	</label>
	<g:textField name="assocPersonOrCompany" value="${nrbBlackListInstance?.assocPersonOrCompany}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: nrbBlackListInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="nrbBlackList.type.label" default="Type" />
		
	</label>
	<g:select name="type" from="${com.lftechnology.amllist.NrbBlackList$Type?.values()}" keys="${com.lftechnology.amllist.NrbBlackList$Type.values()*.name()}" value="${nrbBlackListInstance?.type?.name()}"  noSelection="['': '']"/>

</div>

