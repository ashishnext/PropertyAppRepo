package project.propertyApp.property

class Amenities {
    String lift, waterStorage, atm, conferenceRoom, gym


    static belongsTo = [property: Property]

  //  static transients = ['lift', 'waterStorage', 'atm', 'conferenceRoom', 'gym']
    static constraints = {
//
//        lift nullable: true, bindable: true
//        waterStorage nullable: true, bindable: true
//        atm nullable: true, bindable: true
//        conferenceRoom nullable: true, bindable: true
//        gym nullable: true, bindable: true
    }
}
