package property

import grails.transaction.Transactional
import project.propertyApp.cmdObjs.HouseCO
import project.propertyApp.cmdObjs.OfficeCO
import project.propertyApp.person.Person
import project.propertyApp.property.House
import project.propertyApp.property.Office

@Transactional
class PropertyService {
    def springSecurityService

    def serviceMethod() {

    }

    def saveHouseMethod(HouseCO co) {
        Person person = springSecurityService.currentUser
        House house = new House(location: co.location, address: co.address, pincode: co.pincode, rooms: co.rooms, area: co.area,
                price: co.price, propertyFor: co.propertyFor, person: person).save(flush: true, failOnError: true)
        person.addToProps(house).save(failOnError: true, flush: true)
    }

    def saveOfficeMethod(OfficeCO co) {
        Person person = springSecurityService.currentUser
        Office office = new Office(location: co.location, address: co.address, pincode: co.pincode, parkingFacility: co.parkingFacility, area: co.area,
                price: co.price, propertyFor: co.propertyFor, person: person).save(flush: true, failOnError: true)
        person.addToProps(office).save(failOnError: true, flush: true)
    }

    def myPostsMethod() {

    }
}
