package project.propertyApp.landing

import grails.plugin.springsecurity.annotation.Secured
import project.propertyApp.person.Person

@Secured('permitAll')
class LandingController {
    def springSecurityService

    def index() {
        render(view: "demo")
    }

    def login() {

    }

    def home() {
        flash.home="All properties posted"
    }

    def newHoseProject() {

    }

    def radioSearch() {

      render(view: "home", model: [radioVal:params.cb])

    }

    def renderImage() {
        Person person=(springSecurityService.currentUser)
        def file = new File(person.photoLocation)
        def img = file.bytes
        response.contentType='image/*' // or the appropriate image content type
        response.outputStream << img
        response.outputStream.flush()
    }

    def homeImage() {
        def file = new File("/home/ashish/Desktop/burj_khalifa.jpg")
        def img = file.bytes
        response.contentType='image/*' // or the appropriate image content type
        response.outputStream << img
        response.outputStream.flush()
    }
}
