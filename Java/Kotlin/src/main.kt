import Constants.Companion.RED
import java.math.BigDecimal
import Operation.*

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

//    val mathLib = MathLib()
//    while(true) {
//        val number: Double = MathLib.getInput(prompt = "Enter a number: ")
//        mathLib.addValue(number)
//        println("Current Total: ${mathLib.runningTotal}")
//        if (mathLib.runningTotal > 100.0) {
//            print("That's enough.")
//            break
//        }
//    }

//    try {
//        val num1: Double = MathLib.getInput(prompt = "Enter a number: ")
//        val num2: Double = MathLib.getInput(prompt = "Enter another number: ")
//        print("Enter an operation( + - * / ): ")
//        val op: String? = readLine()
//        val result: Double? =
//            when (op) {
//                ADD.operator -> MathLib.addValues(num1, num2)
//                SUBTRACT.operator -> MathLib.subtractValues(num1, num2)
//                MULTIPLY.operator -> MathLib.multiplyValues(num1, num2)
//                DIVIDE.operator -> MathLib.divideValues(num1, num2)
//                else -> throw Exception("Unknown operation")
//            }
//    } catch (e: Exception) {
//        println(e.message)
//    }

//    val item = DataItem("Thing", "Big", 10.0)
//    println(item)
//    val item2 = DataItem(size = "Tiny", price = 5.0)
//    println(item2)
//    println("Item type is ${item2.type}")
//    item2.price = 10.0
//    println("Item price is ${item2.price}")

//    arrays()
//    lists()
//    sets()
//    maps()

//    val sup = SuperClass(42)
//    println(sup)
//    val sub = SubClass(53)
//    println(sub)
//    println("SubClass multiplied by 3 returns: ${sub.multiply(3)}")

//    val buster = Retriever()
//    buster.speak()
//    makeItTalk(buster)
//    reportBreed("Buster", buster)

//    val stateful = StatefulClass(object: ClickListener {
//        override fun onClick(event: ClickEvent) {
//            println("Click at ${event.x} and ${event.y}")
//        }
//    })
//    println("Listener initialized")
//    stateful.clickMe(5, 16)
//    stateful.clickMe(45, 56)

    val helloWorld = {
        println("Hello World!")
    }
    helloWorld()

    val sayHello = {
        user: String -> println("Hello, $user")
    }
    sayHello("Sean")

}