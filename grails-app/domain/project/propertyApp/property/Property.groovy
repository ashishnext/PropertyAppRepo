package project.propertyApp.property

import project.propertyApp.enums.Enums
import project.propertyApp.person.Person

class Property {
    String location
    String address
    String pincode
    Integer area
    Long price
    Enums.PropertyFor propertyFor
    Date dateCreated
    Date lastUpdated
    String photoLocation
    String phoneNum

    static belongsTo = [person: Person]

    static constraints = {
        photoLocation nullable: true


    }

    static mapping = {
        person lazy: false
    }
}
