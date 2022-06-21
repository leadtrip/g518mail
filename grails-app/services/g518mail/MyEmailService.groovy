package g518mail

import grails.gorm.transactions.Transactional

@Transactional
class MyEmailService {

    def send( params ) {
        sendMail {
            to params.address
            subject params.subject
            text params.body
        }
    }
}
