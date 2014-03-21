import grails.util.Environment
import java.util.Date
import protocv.Person
import protocv.Education
import protocv.SecRole
import protocv.SecUser
import protocv.SecUserSecRole
class BootStrap {
    def springSecurityService
    def init = { servletContext ->
		if (Environment.current == Environment.DEVELOPMENT) {
            // insert Development environment specific code here
                        println "In Bootstrap"
                                                
                        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
                        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
     
                        def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                                        username: 'admin',
                                        password: '30lospinos',
                                        enabled: true).save(failOnError: true)
                                    
                        def userUser = SecUser.findByUsername('lillylangtree') ?: new SecUser(
                                        username: 'lillylangtree',
                                        password: '30lospinos',
                                        enabled: true).save(failOnError: true)

                        if (!adminUser.authorities.contains(adminRole)) {
                                SecUserSecRole.create adminUser, adminRole
                        }
                        if (!userUser.authorities.contains(userRole)) {
                                SecUserSecRole.create userUser, userRole
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
                        def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
                        def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
     
                        def adminUser = SecUser.findByUsername('admin') ?: new SecUser(
                                        username: 'admin',
                                        password: '30lospinos',
                                        enabled: true).save(failOnError: true)
                                    
                        def userUser = SecUser.findByUsername('lillylangtree') ?: new SecUser(
                                        username: 'lillylangtree',
                                        password: '30lospinos',
                                        enabled: true).save(failOnError: true)

                        if (!adminUser.authorities.contains(adminRole)) {
                                SecUserSecRole.create adminUser, adminRole
                        }
                        if (!userUser.authorities.contains(userRole)) {
                                SecUserSecRole.create userUser, userRole
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
