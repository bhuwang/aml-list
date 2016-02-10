package com.lftechnology.amllist

import java.util.Date;

class NrbBlackList {

	String blackListNo
	Date date
	String borrowerName
	String assocPersonOrCompany
	Type type = Type.Person

	// audit fields
	Date dateCreated
	Date lastUpdated

	// set auditable true
	static auditable = true

	static constraints = {
		blackListNo(unique:[
			'date',
			'borrowerName',
			'assocPersonOrCompany',
			'type'
		])
		date()
		borrowerName()
		assocPersonOrCompany(blank:true, nullable:true)
		type(blank:true, nullable:true)
	}

	enum Type{
		Person, Entity
	}
}
