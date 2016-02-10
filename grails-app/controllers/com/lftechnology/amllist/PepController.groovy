package com.lftechnology.amllist



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PepController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pep.list(params), model:[pepInstanceCount: Pep.count()]
    }

    def show(Pep pepInstance) {
        respond pepInstance
    }

    def create() {
        respond new Pep(params)
    }

    @Transactional
    def save(Pep pepInstance) {
        if (pepInstance == null) {
            notFound()
            return
        }

        if (pepInstance.hasErrors()) {
            respond pepInstance.errors, view:'create'
            return
        }

        pepInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pep.label', default: 'Pep'), pepInstance.id])
                redirect action:"index"
            }
            '*' { respond pepInstance, [status: CREATED] }
        }
    }

    def edit(Pep pepInstance) {
        respond pepInstance
    }

    @Transactional
    def update(Pep pepInstance) {
        if (pepInstance == null) {
            notFound()
            return
        }

        if (pepInstance.hasErrors()) {
            respond pepInstance.errors, view:'edit'
            return
        }

        pepInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pep.label', default: 'Pep'), pepInstance.id])
                redirect action:"index"
            }
            '*'{ respond pepInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pep pepInstance) {

        if (pepInstance == null) {
            notFound()
            return
        }

        pepInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pep.label', default: 'Pep'), pepInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pep.label', default: 'Pep'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
