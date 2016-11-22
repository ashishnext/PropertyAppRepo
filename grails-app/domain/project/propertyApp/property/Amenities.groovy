package project.propertyApp.property

class Amenities {
    Boolean lift = false
    Boolean waterStorage = false
    Boolean atm = false
    Boolean conferenceRoom = false
    Boolean gym = false

   // static belongsTo =[property: Property]

    static belongsTo = Property

  //  static transients = ['lift', 'waterStorage', 'atm', 'conferenceRoom', 'gym']
    static constraints = {
    }
}