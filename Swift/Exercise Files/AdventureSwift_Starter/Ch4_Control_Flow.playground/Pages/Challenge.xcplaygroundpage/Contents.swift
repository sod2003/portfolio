/*:
 # Chapter Challenge: Game Logic
 ---
 ### Tasks
 1. Create two optional string variable called **lefthandWeapon** and **righthandWeapon**. Assigning them initial values is at your discretion.
 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
 3. Create a dictionary called **playerExp** and assign it some key-value pairs of type string and integer.
 4. Use a `for-in` loop to iterate over **playerExp** and capture the keys and values.
 5. Add a `guard` statement inside the `for-in` loop to make sure each player is at least level 1 to proceed. Don't forget to include the `continue` keyword.
 6. Use a switch statement to define the following cases:
    6a. exp is equal to 32
    6b. exp is between 200 and 500
    6c. Use value binding to store exp and check that it is greater than 500 using the `where` keyword
 
 [Previous Topic](@previous)
 
 */
// 1
var lefthandWeapon: String?
var righthandWeapon: String? = "Shortsword"

// 2
if let lefthand = lefthandWeapon, let righthand = righthandWeapon {
    print("In his lefthand he has a \(lefthand), and in his righthand he has a \(righthand)")
} else {
    print("He's not dual wielding!")
}

// 3
var playerExp = ["Sean": 200, "Chuck": 32, "Jason": 0]

// 4
for (key, value) in playerExp {
//    print("\(key): \(value)")
//}

// 5
    guard value >= 1 else {
        print("\(key) has no experience!")
        continue
    }
    print("\(key): \(value)")

// 6
    switch value {
        case 32:
            print("32 enemies slain! Nice!")
        case 200...500:
            print("You're a conquerer!")
        case let localExp where localExp > 500:
            print("Foes bested: \(localExp)")
        default:
            print("I'm not sure how many foes you've bested")
    }
}
