package protocv

class Education {

    String institution
	String level
	String award
	String course
	static belongsTo = [person: Person]
    static constraints = {
		level(inList:["2nd", "3rd"])
    }
}
