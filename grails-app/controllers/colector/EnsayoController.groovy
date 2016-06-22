package colector



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EnsayoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ensayo.list(params), model:[ensayoInstanceCount: Ensayo.count()]
    }

    def show(Ensayo ensayoInstance) {
        respond ensayoInstance
    }

    def create() {
        respond new Ensayo(params)
    }

    @Transactional
    def save(Ensayo ensayoInstance) {
        if (ensayoInstance == null) {
            notFound()
            return
        }

        if (ensayoInstance.hasErrors()) {
            respond ensayoInstance.errors, view:'create'
            return
        }

        ensayoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ensayo.label', default: 'Ensayo'), ensayoInstance.id])
                redirect ensayoInstance
            }
            '*' { respond ensayoInstance, [status: CREATED] }
        }
    }

    def edit(Ensayo ensayoInstance) {
        respond ensayoInstance
    }

    @Transactional
    def update(Ensayo ensayoInstance) {
        if (ensayoInstance == null) {
            notFound()
            return
        }

        if (ensayoInstance.hasErrors()) {
            respond ensayoInstance.errors, view:'edit'
            return
        }

        ensayoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ensayo.label', default: 'Ensayo'), ensayoInstance.id])
                redirect ensayoInstance
            }
            '*'{ respond ensayoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ensayo ensayoInstance) {

        if (ensayoInstance == null) {
            notFound()
            return
        }

        ensayoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ensayo.label', default: 'Ensayo'), ensayoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ensayo.label', default: 'Ensayo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
