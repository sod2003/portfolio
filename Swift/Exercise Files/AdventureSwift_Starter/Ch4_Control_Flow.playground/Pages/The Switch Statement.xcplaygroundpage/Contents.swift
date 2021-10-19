/*:
 # The SWITCH Statement
 ---
 
 ## Topic Essentials
 A switch statement takes a value and runs it against possible matching patterns, with each possible match having a different block of executable code. While that might sound boring, switch statements in Swift have a lot of features that make them excellent for decision logic.
 
 ### Objectives
 + Use a switch statement to execute different code for different **initial** values
 + Use a switch statement to evaluate multiple variables
 + Use value binding and the `where` keyword to add logic to more cases
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Test variables
let initial = "A"
let hp = 25
let mp = 24

// Simple switch
switch initial {
case "H":
    print("This is an H")
default:
    print("Nothin, nope, nada!")
}

// Complex variations
switch (hp, mp) {
case (15, 10):
    print("You're good!")
case (1...15, 20..<25):
    print("Ranges are the best!")
case (let localHP, let localMP) where localHP + localMP > 20:
    print(localHP, localMP)
default:
    print("Nothin, nope, nada!")
}
