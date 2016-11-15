package person

import com.Role
import com.UserRole
import grails.transaction.Transactional
import project.propertyApp.cmdObjs.RegistrationCO
import project.propertyApp.person.Person

@Transactional
class PersonService {

    def serviceMethod() {

    }

    def registrationMethod(RegistrationCO co) {

        if (co.role=="Owner") {
            Person person = new Person(username: co.username, password: co.password, name: co.name, age: co.age).save(failOnError: true, flush: true)
            UserRole.create(person, Role.findByAuthority("ROLE_OWNER"))
        }
        else if  (co.role=="Agent") {
            Person person = new Person(username: co.username, password: co.password, name: co.name, age: co.age).save(failOnError: true, flush: true)
            UserRole.create(person, Role.findByAuthority("ROLE_AGENT"))
        }
        else {
            Person person = new Person(username: co.username, password: co.password, name: co.name, age: co.age).save(failOnError: true, flush: true)
            UserRole.create(person, Role.findByAuthority("ROLE_CUSTOMER"))
        }

    }
}
