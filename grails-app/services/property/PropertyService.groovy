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

        co.id=house.id
    }

    def saveOfficeMethod(OfficeCO co) {
        Person person = springSecurityService.currentUser
        Office office = new Office(location: co.location, address: co.address, pincode: co.pincode, parkingFacility: co.parkingFacility, area: co.area,
                price: co.price, propertyFor: co.propertyFor, person: person).save(flush: true, failOnError: true)
        person.addToProps(office).save(failOnError: true, flush: true)

        co.id=office.id
    }

    def myPostsMethod() {

    }

    def updateHouseMethod(HouseCO houseCO, String houseId) {
        House house = House.findById(houseId as Long)

        house.rooms = houseCO.rooms
        house.address = houseCO.address
        house.location = houseCO.location
        house.pincode = houseCO.pincode
        house.area = houseCO.area
        house.price = houseCO.price
        house.propertyFor = houseCO.propertyFor

        house.save(failOnError: true, flush: true)
    }

    def updateOfficeMethod(OfficeCO officeCO, String officeId) {
        Office office = Office.findById(officeId as Long)
        office.parkingFacility = officeCO.parkingFacility
        office.address = officeCO.address
        office.location = officeCO.location
        office.pincode = officeCO.pincode
        office.area = officeCO.area
        office.price = officeCO.price
        office.propertyFor = officeCO.propertyFor

        office.save(failOnError: true, flush: true)

    }
}
