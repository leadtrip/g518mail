package g518mail

import grails.gorm.transactions.Rollback
import grails.testing.mixin.integration.Integration
import spock.lang.Specification
import com.icegreen.greenmail.util.GreenMailUtil

import javax.mail.Message

@Integration
@Rollback
class MyEmailServiceIntegrationSpec extends Specification{

    def myEmailService
    def greenMail

    void "test something"() {
        given:
            def address = 'bob.thebuilder@themoon.com'
            def subject = 'Building today'
            def body = 'Can we fix it?'
        when:
            myEmailService.send([address: address, subject: subject, body: body])
        then:
            def rcvd = greenMail.getReceivedMessages()
            rcvd.size() == 1

            def message = rcvd[0]
            message.sentDate
            message.subject == subject
            GreenMailUtil.getAddressList(message.getRecipients(Message.RecipientType.TO)) == address
            GreenMailUtil.getWholeMessage(message).contains(body)
    }
}
