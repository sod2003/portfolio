struct NameStruct {
    var firstName: String
    var lastName: String
}

var joe = NameStruct(firstName: "Joe", lastName: "Snuffy")
var patrick = joe

print("\(joe), \(patrick)")

patrick.firstName = "Patrick"
patrick.lastName = "McKenna"

print("\(joe), \(patrick)")
