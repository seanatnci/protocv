package protocv



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EducationController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Education.list(params), model:[educationInstanceCount: Education.count()]
    }

    def show(Education educationInstance) {
        respond educationInstance
    }
    
    def create(Person personInstance) {
        Education ed = new Education(params)
        ed.person = personInstance
        //respond new Education(params)
        
        respond ed
    }

    @Transactional
    def save(Education educationInstance) {
        if (educationInstance == null) {
            notFound()
            return
        }

        if (educationInstance.hasErrors()) {
            respond educationInstance.errors, view:'create'
            return
        }

        educationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'educationInstance.label', default: 'Education'), educationInstance.id])
                redirect educationInstance
            }
            '*' { respond educationInstance, [status: CREATED] }
        }
    }

    def edit(Education educationInstance) {
        respond educationInstance
    }

    @Transactional
    def update(Education educationInstance) {
        if (educationInstance == null) {
            notFound()
            return
        }

        if (educationInstance.hasErrors()) {
            respond educationInstance.errors, view:'edit'
            return
        }

        educationInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Education.label', default: 'Education'), educationInstance.id])
                redirect educationInstance
            }
            '*'{ respond educationInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Education educationInstance) {

        if (educationInstance == null) {
            notFound()
            return
        }

        educationInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Education.label', default: 'Education'), educationInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'educationInstance.label', default: 'Education'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
