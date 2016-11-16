package project.propertyApp.cmdObjs

import grails.validation.Validateable

@Validateable
class HouseCO {

    String location
    String address
    Integer pincode
    Integer area
    Long price
    String propertyFor
    String rooms
    String id
    String id2

    static constraints= {

        pincode size: 6
        id nullable: true
        id2 nullable: true
    }

}
