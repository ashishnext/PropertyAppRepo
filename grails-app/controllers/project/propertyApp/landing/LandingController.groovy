package project.propertyApp.landing

import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class LandingController {

    def index() {
        render(view: "demo")
    }

    def login() {

    }

    def home() {

//        if (flash.message) {
//            render(view: "home", model: [houseByLocation:flash.message.houseByLocation, officeByLocation:flash.message.officeByLocation])
//        }
//        else {
//            render(view: "home")
//        }
    }

    def newHoseProject() {

    }

    def radioSearch() {

      render(view: "home", model: [radioVal:params.cb])

    }
}
