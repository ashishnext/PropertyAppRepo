package project.propertyApp.property

class House extends Property{
    String rooms


    static constraints = {

    }

    static List<House> newHousePosted() {
        def c=House.createCriteria()
        List<House> results=c.list(max: 5) {
            order("dateCreated", "desc")
        }
        return results
    }
}