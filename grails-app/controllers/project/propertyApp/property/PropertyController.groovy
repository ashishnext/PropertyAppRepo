package project.propertyApp.property

import grails.plugin.springsecurity.annotation.Secured
import project.propertyApp.cmdObjs.HouseCO
import project.propertyApp.cmdObjs.OfficeCO
import project.propertyApp.person.Person

@Secured('IS_AUTHENTICATED_FULLY')
class PropertyController {
    def springSecurityService
    def propertyService

    def index() {}

    def postProperty() {

    }

    def saveHouse(HouseCO houseCO) {
        if (houseCO.validate()) {

            propertyService.saveHouseMethod(houseCO)
            redirect(controller: "landing", action: "home")
        } else {
            houseCO.errors.allErrors.each { println(it) }
            render(view: "postProperty", model: [houseCO: houseCO])
        }

    }

    def saveOffice(OfficeCO officeCO) {
        if (officeCO.validate()) {

            propertyService.saveOfficeMethod(officeCO)
            redirect(controller: "landing", action: "home")
        } else {
            officeCO.errors.allErrors.each { println(it) }
            render(view: "postProperty", model: [officeCO:officeCO])
        }

    }

    def myPosts() {
        Person person = springSecurityService.currentUser
        println person.username
        List<House> houseList = House.findAllByPerson(person)
        List<Office> officeList = Office.findAllByPerson(person)
        render(view: "myPosts", model: [houseList: houseList, officeList: officeList])
    }

    def searchByLocation() {

        String[] priceRange = params.price.split("-")
        def c = House.createCriteria()
        List<House> results = c.list() {
            ilike("location", params.searchLocation)
            between("price", priceRange[0] as Long, priceRange[1] as Long)
//            eq("propertyFor", params.propertyFor)
        }

        def c1 = Office.createCriteria()
        List<House> results1 = c1.list() {
            ilike("location", params.searchLocation)
            between("price", priceRange[0] as Long, priceRange[1] as Long)
//            eq("propertyFor", params.propertyFor)
        }

        render(view: "/landing/home", model: [houseByLocation: results, officeByLocation: results1])

//        render(view: "/landing/home", model: [houseByLocation:results, officeByLocation:results1])
    }

    def editHouse() {
        House house = House.findById(params.houseId as Long)

        render(view: "editHouse", model: [houseObj: house])
    }

    def updateHouse(HouseCO houseCO) {
        House house = House.findById(params.houseId as Long)
        println("-------------" + house.id)
        house.rooms = houseCO.rooms
        house.address = houseCO.address
        house.location = houseCO.location
        house.pincode = houseCO.pincode
        house.area = houseCO.area
        house.price = houseCO.price
        house.propertyFor = houseCO.propertyFor
        houseCO.id=params.id


        if (houseCO.validate()) {
            house.save(failOnError: true, flush: true)
            flash.message="Your post is updated successfully"
            redirect(action: "myPosts")

        } else {
            houseCO.errors.allErrors.each { println(it) }
            render(view: "editHouse", model: [houseCO: houseCO])

        }
    }

    def editOffice() {
        Office office=Office.findById(params.officeId as Long)
        render(view: "editOffice", model: [officeObj: office] )
    }

    def updateOffice(OfficeCO officeCO) {
        Office office = Office.findById(params.officeId as Long )
        //println("-------------" + office.id)
        office.parkingFacility = officeCO.parkingFacility
        office.address = officeCO.address
        office.location = officeCO.location
        office.pincode = officeCO.pincode
        office.area = officeCO.area
        office.price = officeCO.price
        office.propertyFor = officeCO.propertyFor
        officeCO.id=params.id

        if (officeCO.validate()) {
            office.save(failOnError: true, flush: true)
            flash.message="Your post is updated successfully"
            redirect(action: "myPosts")

        } else {
            officeCO.errors.allErrors.each { println(it) }
            render(view: "editOffice", model: [officeCO: officeCO])
        }
    }

    def deleteHouse() {

        House house=House.findById(params.houseId as Long)
        house.delete(flush: true)
        redirect(action: "myPosts")

    }

    def deleteOffice() {

        Office office=Office.findById(params.officeId as Long)
        office.delete(flush: true)
        redirect(action: "myPosts")
    }


}
