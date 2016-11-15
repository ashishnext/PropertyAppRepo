package project.propertyApp.cmdObjs

import com.User
import grails.validation.Validateable

@Validateable
class RegistrationCO {
    String name
    String age
    String username
    String password
    String confirmPassword
    String role

    static constraints= {
        confirmPassword nullable: false, validator: {val, obj ->
            if (val!=obj.password) {
                return false
            }
            else {
                return true
            }
        }

        username validator: {val ->
            if (User.findByUsername(val)) {
                return false
            }

        }
    }
}
