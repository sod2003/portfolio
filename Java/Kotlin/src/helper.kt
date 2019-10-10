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

// A function for demonstrating arrays of single-type and mixed-type
fun arrays() {
    val array1 = arrayOf("Red", "Blue", "Green")
    println("Single type Array contains: ")
    for (element in array1) {
        println(element)
    }
    println("Mixed type array contains: ")
    val mixed = arrayOf("String", 12)
    for (element in mixed) {
        println(element)
    }
    println("Now manipulating an array of nulls: ")
    val nulls = arrayOfNulls<String>(3)
    for (element in nulls) {
        println(element)
    }
    nulls[0] = "Red"
    nulls[1] = "Sesame"
    nulls[2] = "Tokyo"
    for (element in nulls) {
        println(element)
    }
    println("Finally, using an Int Array: ")
    val intArray = intArrayOf(1, 2, 3)
    for (element in intArray) {
        println(element)
    }
    val sortArray = intArray.sortedArrayDescending()
    for (element in sortArray) {
        println(element)
    }
}