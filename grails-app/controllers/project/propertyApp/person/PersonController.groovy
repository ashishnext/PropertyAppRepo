package project.propertyApp.person

import grails.plugin.springsecurity.annotation.Secured
import project.propertyApp.cmdObjs.RegistrationCO

@Secured('permitAll')
class PersonController {
    def springSecurityService
    def personService

    def index() {}

    def registration(RegistrationCO registrationCO) {

        if (registrationCO.validate()) {
            personService.registrationMethod(registrationCO)
            springSecurityService.reauthenticate(registrationCO.username)
//            render(view: "/landing/home")
            redirect(controller: "landing", action: "home")
        }
        else {
            registrationCO.errors.allErrors.each {println(it)}
            render(view: "/landing/login", model: [registrationCO:registrationCO])
        }

    }
}
