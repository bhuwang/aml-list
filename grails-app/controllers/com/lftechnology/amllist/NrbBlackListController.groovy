package com.lftechnology.amllist



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class NrbBlackListController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond NrbBlackList.list(params), model:[nrbBlackListInstanceCount: NrbBlackList.count()]
	}

	def show(NrbBlackList nrbBlackListInstance) {
		respond nrbBlackListInstance
	}

	def create() {
		respond new NrbBlackList(params)
	}

	@Transactional
	def save(NrbBlackList nrbBlackListInstance) {
		if (nrbBlackListInstance == null) {
			notFound()
			return
		}

		if (nrbBlackListInstance.hasErrors()) {
			respond nrbBlackListInstance.errors, view:'create'
			return
		}

		nrbBlackListInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'nrbBlackList.label', default: 'NrbBlackList'),
					nrbBlackListInstance.id
				])
				redirect action:"index"
			}
			'*' { respond nrbBlackListInstance, [status: CREATED] }
		}
	}

	def edit(NrbBlackList nrbBlackListInstance) {
		respond nrbBlackListInstance
	}

	@Transactional
	def update(NrbBlackList nrbBlackListInstance) {
		if (nrbBlackListInstance == null) {
			notFound()
			return
		}

		if (nrbBlackListInstance.hasErrors()) {
			respond nrbBlackListInstance.errors, view:'edit'
			return
		}

		nrbBlackListInstance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'NrbBlackList.label', default: 'NrbBlackList'),
					nrbBlackListInstance.id
				])
				redirect action:"index"
			}
			'*'{ respond nrbBlackListInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(NrbBlackList nrbBlackListInstance) {

		if (nrbBlackListInstance == null) {
			notFound()
			return
		}

		nrbBlackListInstance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'NrbBlackList.label', default: 'NrbBlackList'),
					nrbBlackListInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'nrbBlackList.label', default: 'NrbBlackList'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
