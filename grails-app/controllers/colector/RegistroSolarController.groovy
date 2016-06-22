package colector



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RegistroSolarController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RegistroSolar.list(params), model:[registroSolarInstanceCount: RegistroSolar.count()]
    }

    def show(RegistroSolar registroSolarInstance) {
        respond registroSolarInstance
    }

    def create() {
        respond new RegistroSolar(params)
    }

    @Transactional
    def save(RegistroSolar registroSolarInstance) {
        if (registroSolarInstance == null) {
            notFound()
            return
        }

        if (registroSolarInstance.hasErrors()) {
            respond registroSolarInstance.errors, view:'create'
            return
        }

        registroSolarInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'registroSolar.label', default: 'RegistroSolar'), registroSolarInstance.id])
                redirect registroSolarInstance
            }
            '*' { respond registroSolarInstance, [status: CREATED] }
        }
    }

    def edit(RegistroSolar registroSolarInstance) {
        respond registroSolarInstance
    }

    @Transactional
    def update(RegistroSolar registroSolarInstance) {
        if (registroSolarInstance == null) {
            notFound()
            return
        }

        if (registroSolarInstance.hasErrors()) {
            respond registroSolarInstance.errors, view:'edit'
            return
        }

        registroSolarInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RegistroSolar.label', default: 'RegistroSolar'), registroSolarInstance.id])
                redirect registroSolarInstance
            }
            '*'{ respond registroSolarInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RegistroSolar registroSolarInstance) {

        if (registroSolarInstance == null) {
            notFound()
            return
        }

        registroSolarInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RegistroSolar.label', default: 'RegistroSolar'), registroSolarInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'registroSolar.label', default: 'RegistroSolar'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
