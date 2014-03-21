import grails.util.Environment
import java.util.Date
import protocv.Person
import protocv.Education
import protocv.Role
import protocv.User
import protocv.UserRole
class BootStrap {
    def springSecurityService
    def init = { servletContext ->
		if (Environment.current == Environment.DEVELOPMENT) {
            // insert Development environment specific code here
                        println "In Bootstrap"
                                                
                        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
                        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
     
                        def adminUser = User.findByUsername('admin') ?: new User(
                                        username: 'admin',
                                        password: '30lospinos',
                                        enabled: true).save(failOnError: true)
                                    
                        def userUser = User.findByUsername('lillylangtree') ?: new User(
                                        username: 'lillylangtree',
                                        password: '30lospinos',
                                        enabled: true).save(failOnError: true)

                        if (!adminUser.authorities.contains(adminRole)) {
                                UserRole.create adminUser, adminRole
                        }
			
                        Person person = new Person(
				firstName: 'sean',
				lastName: 'cahill',
				addressLine1: '53 Eaglewood',
				addressLine2: 'Rochestown Ave.',
				town: 'Dun Laoghaire',
				county: 'Dublin',
				country: 'Ireland',
				dob: Date.parse("dd/MM/yyyy","22/09/1964"),
                                telNo: '0879818357',
				email: 'sean@nmm.ie'
				)
                        println person.firstName
                        
                        if (person.hasErrors()) {
                            println person.errors
                      
                        }
			person.save(flush: true)
//			Education ed = new Education(
//				institution: 'UCD',
//				award: '2.1',
//				level: '3rd',
//				course: 'Masters of Management Science',
//				
//                                person: person)
                            
//			ed.save()
				
				
        } else 
        if (Environment.current == Environment.TEST) {
            // insert Test environment specific code here
        } else 
        if (Environment.current == Environment.PRODUCTION) {
            // insert Production environment specific code here
                        def userRole = Role.findByAuthority('ROLE_USER') ?: new Role(authority: 'ROLE_USER').save(failOnError: true)
                        def adminRole = Role.findByAuthority('ROLE_ADMIN') ?: new Role(authority: 'ROLE_ADMIN').save(failOnError: true)
     
                        def adminUser = User.findByUsername('admin') ?: new User(
                                        username: 'admin',
                                        password: '30lospinos',
                                        enabled: true).save(failOnError: true)
                                    
                        def userUser = User.findByUsername('lillylangtree') ?: new User(
                                        username: 'lillylangtree',
                                        password: '30lospinos',
                                        enabled: true).save(failOnError: true)

                        if (!adminUser.authorities.contains(adminRole)) {
                                UserRole.create adminUser, adminRole
                        }
			
                        Person person = new Person(
				firstName: 'sean',
				lastName: 'cahill',
				addressLine1: '53 Eaglewood',
				addressLine2: 'Rochestown Ave.',
				town: 'Dun Laoghaire',
				county: 'Dublin',
				country: 'Ireland',
				dob: Date.parse("dd/MM/yyyy","22/09/1964"),
                                telNo: '0879818357',
				email: 'sean@nmm.ie'
				)
                        println person.firstName
                        
                        if (person.hasErrors()) {
                            println person.errors
                      
                        }
			person.save(flush: true)
        } 
    }
    def destroy = {
    }
}
