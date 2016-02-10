package com.lftechnology.amllist

import java.util.Date;

class Pep {

	String firstName
	String middleName
	String lastName
	String aliasName
	String aliasName2
	Gender gender
	String placeOfBirth
	String altPlaceOfBirth
	Date dob
	Date altDob
	String address
	String nationalityOrCitizenship
	String altNationality
	String identificationInfo
	String description
	String familyMembers

	// audit fields
	Date dateCreated
	Date lastUpdated

	// set auditable true
	static auditable = true

	static constraints = {
		firstName(unique: ['lastName', 'gender','description','address'])
		middleName(blank:true, nullable: true)
		lastName()
		aliasName(blank:true, nullable: true)
		aliasName2(blank:true, nullable: true)
		gender()
		placeOfBirth(blank:true, nullable: true)
		altPlaceOfBirth(blank:true, nullable: true)
		dob()
		altDob(blank:true, nullable: true)
		address()
		nationalityOrCitizenship()
		altNationality(blank:true, nullable: true)
		identificationInfo(blank:true, nullable: true)
		description(blank:true, nullable: true)
		familyMembers(blank:true, nullable: true)
	}
	
	@Override
	public String toString() {
		firstName+' '+(middleName?(middleName+' '):'')+lastName
	}

	enum Gender{
		Male, Female
	}
}
