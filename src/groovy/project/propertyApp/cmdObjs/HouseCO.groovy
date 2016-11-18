package project.propertyApp.cmdObjs

import grails.validation.Validateable
import project.propertyApp.enums.Enums

@Validateable
class HouseCO {

    String location
    String address
    String pincode
    Integer area
    Long price
    Enums.PropertyFor propertyFor
    String rooms
    Long id
    byte[] housePhoto
    String furnished
    Integer numOfBalconies
    String phoneNum


    static constraints= {

        pincode size: 1..6
        id nullable: true
        housePhoto nullable: true
        phoneNum size: 1..10

    }

}
