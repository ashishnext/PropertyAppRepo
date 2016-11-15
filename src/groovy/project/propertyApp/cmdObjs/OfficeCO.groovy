package project.propertyApp.cmdObjs

import grails.validation.Validateable

@Validateable
class OfficeCO {

    String location
    String address
    Integer pincode
    Long area
    Long price
    String propertyFor
    Boolean parkingFacility
    String id

    static constraints= {
        id nullable: true
    }
}
