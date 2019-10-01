import Constants.Companion.RED
import java.math.BigDecimal

fun main() {
   /*
    println("Hello World!")
    println("My special constant is $RED")
    var myInt = 42
    var myDouble = myInt.toDouble()
    println("myInt is $myInt")
    println("Upcasting to myDouble is $myDouble")

    var itsFunctional = addList(1, 2, 3)
    println("itsFunctional returns $itsFunctional")

    nullExcept()

    exception1()

    */

//    calculator()

    val mathLib = MathLib()
    while(true) {
        val number: Double = MathLib.getInput(prompt = "Enter a number: ")
        mathLib.addValue(number)
        println("Current Total: ${mathLib.runningTotal}")
        if (mathLib.runningTotal > 100.0) {
            print("That's enough.")
            break
        }
    }
}
