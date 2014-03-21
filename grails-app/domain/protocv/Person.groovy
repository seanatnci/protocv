package protocv

class Person {

	String firstName
	String lastName
	String addressLine1
	String addressLine2
	String town
	String county
	String country
	String email
	String telNo
	Date dob
	static hasMany = [educations: Education]
	
    static constraints = {
		firstName(blank:false, nullable:false, size:3..30, matches:"[a-zA-Z1-9_]+") 
		email(email:true)
    }
	
	//String toString() {
	//	return firstName + lastName;
	//	}
}
