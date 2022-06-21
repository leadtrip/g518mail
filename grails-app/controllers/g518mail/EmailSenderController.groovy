package g518mail

class EmailSenderController {

    def myEmailService

    def index() { }

    def send() {
        myEmailService.send(params)
        flash.message = "Message sent at "+new Date()
        redirect action: "index"
    }
}
