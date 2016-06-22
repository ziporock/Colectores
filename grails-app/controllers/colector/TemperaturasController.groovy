package colector



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TemperaturasController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Temperaturas.list(params), model:[temperaturasInstanceCount: Temperaturas.count()]
    }

    def show(Temperaturas temperaturasInstance) {
        respond temperaturasInstance
    }

    def create() {
        respond new Temperaturas(params)
    }

    @Transactional
    def save(Temperaturas temperaturasInstance) {
        if (temperaturasInstance == null) {
            notFound()
            return
        }

        if (temperaturasInstance.hasErrors()) {
            respond temperaturasInstance.errors, view:'create'
            return
        }

        temperaturasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'temperaturas.label', default: 'Temperaturas'), temperaturasInstance.id])
                redirect temperaturasInstance
            }
            '*' { respond temperaturasInstance, [status: CREATED] }
        }
    }

    def edit(Temperaturas temperaturasInstance) {
        respond temperaturasInstance
    }

    @Transactional
    def update(Temperaturas temperaturasInstance) {
        if (temperaturasInstance == null) {
            notFound()
            return
        }

        if (temperaturasInstance.hasErrors()) {
            respond temperaturasInstance.errors, view:'edit'
            return
        }

        temperaturasInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Temperaturas.label', default: 'Temperaturas'), temperaturasInstance.id])
                redirect temperaturasInstance
            }
            '*'{ respond temperaturasInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Temperaturas temperaturasInstance) {

        if (temperaturasInstance == null) {
            notFound()
            return
        }

        temperaturasInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Temperaturas.label', default: 'Temperaturas'), temperaturasInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'temperaturas.label', default: 'Temperaturas'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
