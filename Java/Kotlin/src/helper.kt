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