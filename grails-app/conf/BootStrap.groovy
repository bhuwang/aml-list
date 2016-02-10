import java.nio.charset.Charset
import java.nio.charset.StandardCharsets;
import java.nio.file.Files
import java.nio.file.Paths
import java.util.Date;

import com.lftechnology.amllist.Pep;
import com.lftechnology.amllist.Pep.Gender;

import liquibase.util.csv.CSVReader;


class BootStrap {
	def grailsApplication
	def init = {
		/* servletContext ->
		 def SEPARATOR = ","
		 def allLines = Files.readAllLines(Paths.get("/home/bhuwan/Documents/workspace-ggts-3.6.4.RELEASE/aml-list/grails-app/assets/data/pep.csv"), StandardCharsets.UTF_8)
		 int i = 0;
		 for(String line : allLines){
		 if(i==0){
		 i++
		 continue
		 }
		 List<String> fields = line.split(SEPARATOR)
		 int j = 0;
		 for(String field : fields){
		 Pep pep = new Pep()
		 if(j==0){
		 j++
		 continue
		 }
		 if(j==1){
		 pep.firstName=field
		 }
		 else if(j==2){
		 pep.middleName=field
		 }
		 else if(j==3){
		 pep.lastName=field
		 }else if(j==4){
		 pep.aliasName=field
		 }else if(j==5){
		 pep.aliasName2=field
		 }else if(j==6){
		 pep.gender=field
		 }else if(j==7){
		 pep.placeOfBirth=field
		 }else if(j==8){
		 pep.altPlaceOfBirth=field
		 }else if(j==9){
		 pep.dob=field
		 }else if(j==10){
		 pep.altDob=field
		 }else if(j==11){
		 pep.address=field
		 }else if(j==12){
		 pep.nationalityOrCitizenship=field
		 }else if(j==13){
		 pep.altNationality=field
		 }else if(j==14){
		 pep.identificationInfo=field
		 }else if(j==15){
		 pep.description=field
		 }else if(j==16){
		 pep.familyMembers=field
		 }
		 j++
		 }
		 pep.save()
		 i++;
		 }
		 */
	}
	def destroy = {
	}
}
