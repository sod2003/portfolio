import Constants.Companion.RED

fun main() {
    println("Hello World!")
    println("My special constant is $RED")
    var myInt = 42
    var myDouble = myInt.toDouble()
    println("myInt is $myInt")
    println("Upcasting to myDouble is $myDouble")

    var itsFunctional = addList(1, 2, 3)
    println("itsFunctional returns $itsFunctional")

    nullExcept()
}

// Now for a cool function that allows a variable number of parameters
fun addList(vararg list: Int): Int {
    var sum = 0
    for ( i in list) {
        sum += i
    }
    return sum
}

fun nullExcept() {
    val l:String? = null
    println("Kotlin is null safe, except this function returns a $l")

}