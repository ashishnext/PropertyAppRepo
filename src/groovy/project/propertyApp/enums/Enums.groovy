package project.propertyApp.enums

class Enums {

    public enum PropertyFor {
        SALE, RENT

        public static List<PropertyFor> propertyForList() {
            return [SALE, RENT]
        }
    }
}
