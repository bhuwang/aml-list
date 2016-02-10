<%@ page import="com.lftechnology.amllist.Pep" %>



<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="pep.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${pepInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="pep.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${pepInstance?.middleName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="pep.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${pepInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'aliasName', 'error')} ">
	<label for="aliasName">
		<g:message code="pep.aliasName.label" default="Alias Name" />
		
	</label>
	<g:textField name="aliasName" value="${pepInstance?.aliasName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'aliasName2', 'error')} ">
	<label for="aliasName2">
		<g:message code="pep.aliasName2.label" default="Alias Name2" />
		
	</label>
	<g:textField name="aliasName2" value="${pepInstance?.aliasName2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="pep.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="gender" from="${com.lftechnology.amllist.Pep$Gender?.values()}" keys="${com.lftechnology.amllist.Pep$Gender.values()*.name()}" required="" value="${pepInstance?.gender?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'placeOfBirth', 'error')} ">
	<label for="placeOfBirth">
		<g:message code="pep.placeOfBirth.label" default="Place Of Birth" />
		
	</label>
	<g:textField name="placeOfBirth" value="${pepInstance?.placeOfBirth}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'altPlaceOfBirth', 'error')} ">
	<label for="altPlaceOfBirth">
		<g:message code="pep.altPlaceOfBirth.label" default="Alt Place Of Birth" />
		
	</label>
	<g:textField name="altPlaceOfBirth" value="${pepInstance?.altPlaceOfBirth}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="pep.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${pepInstance?.dob}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'altDob', 'error')} ">
	<label for="altDob">
		<g:message code="pep.altDob.label" default="Alt Dob" />
		
	</label>
	<g:datePicker name="altDob" precision="day"  value="${pepInstance?.altDob}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="pep.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${pepInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'nationalityOrCitizenship', 'error')} required">
	<label for="nationalityOrCitizenship">
		<g:message code="pep.nationalityOrCitizenship.label" default="Nationality Or Citizenship" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nationalityOrCitizenship" required="" value="${pepInstance?.nationalityOrCitizenship}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'altNationality', 'error')} ">
	<label for="altNationality">
		<g:message code="pep.altNationality.label" default="Alt Nationality" />
		
	</label>
	<g:textField name="altNationality" value="${pepInstance?.altNationality}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'identificationInfo', 'error')} ">
	<label for="identificationInfo">
		<g:message code="pep.identificationInfo.label" default="Identification Info" />
		
	</label>
	<g:textField name="identificationInfo" value="${pepInstance?.identificationInfo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="pep.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${pepInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pepInstance, field: 'familyMembers', 'error')} ">
	<label for="familyMembers">
		<g:message code="pep.familyMembers.label" default="Family Members" />
		
	</label>
	<g:textField name="familyMembers" value="${pepInstance?.familyMembers}"/>

</div>

