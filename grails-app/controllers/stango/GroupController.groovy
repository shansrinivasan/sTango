package stango

import org.springframework.dao.DataIntegrityViolationException

class GroupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [groupInstanceList: Group.list(params), groupInstanceTotal: Group.count()]
    }

    def create() {
        [groupInstance: new Group(params)]
    }

    def save() {
        def groupInstance = new Group(params)
        if (!groupInstance.save(flush: true)) {
            render(view: "create", model: [groupInstance: groupInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'group.label', default: 'Group'), groupInstance.id])
        redirect(action: "show", id: groupInstance.id)
    }

    def show() {
        def groupInstance = Group.get(params.id)
        if (!groupInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), params.id])
            redirect(action: "list")
            return
        }

        [groupInstance: groupInstance]
    }

    def edit() {
        def groupInstance = Group.get(params.id)
        if (!groupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), params.id])
            redirect(action: "list")
            return
        }

        [groupInstance: groupInstance]
    }

    def update() {
        def groupInstance = Group.get(params.id)
        if (!groupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (groupInstance.version > version) {
                groupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'group.label', default: 'Group')] as Object[],
                          "Another user has updated this Group while you were editing")
                render(view: "edit", model: [groupInstance: groupInstance])
                return
            }
        }

        groupInstance.properties = params

        if (!groupInstance.save(flush: true)) {
            render(view: "edit", model: [groupInstance: groupInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'group.label', default: 'Group'), groupInstance.id])
        redirect(action: "show", id: groupInstance.id)
    }

    def delete() {
        def groupInstance = Group.get(params.id)
        if (!groupInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'group.label', default: 'Group'), params.id])
            redirect(action: "list")
            return
        }

        try {
            groupInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'group.label', default: 'Group'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'group.label', default: 'Group'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
