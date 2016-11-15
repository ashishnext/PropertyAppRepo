package project.propertyApp.property

import project.propertyApp.enums.Enums
import project.propertyApp.person.Person

class Property {
    String location
    String address
    Integer pincode
    Integer area
    Long price
    Enums.PropertyFor propertyFor
    Date dateCreated
    Date lastUpdated

    static belongsTo = [person: Person]

    static constraints = {

    }

    static mapping = {
        person lazy: false
    }
}
