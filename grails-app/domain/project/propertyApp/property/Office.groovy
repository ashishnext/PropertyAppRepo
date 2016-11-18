package project.propertyApp.property

class Office extends Property {
    Boolean parkingFacility
    Boolean liftAvailable

    static constraints = {
    }

    static List<Office> newOfficePosted() {
        def c=Office.createCriteria()
        List<Office> results=c.list(max: 5) {
            order("dateCreated", "desc")
        }
        return results
    }
}
