class NameClass {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

extension NameClass: CustomStringConvertible {
    public var description: String {
        return "NameClass(firstname: \(firstName), lastname: \(lastName))"
    }
}

var steve = NameClass(firstName: "Steve", lastName: "Lee")
print(steve.description)
