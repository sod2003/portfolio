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

// A function for demonstrating lists
fun lists() {
    val colorList = listOf("Red", "Green", "Blue")
    println(colorList)
    println("Number of Colors: ${colorList.size}")
    var colorList2 = mutableListOf<String>()
    colorList2.add("Red")
    colorList2.add("Green")
    colorList2.add("Blue")
    println(colorList2)
    colorList2.sort()
    println(colorList2)
    val sortList = colorList2.sortedDescending()
    println(sortList)
}

//A function demonstrating sets
fun sets() {
    val colorSet = mutableSetOf<String>("Red", "Green", "Blue")
    println(colorSet)
    colorSet.add("Purple")
    colorSet.remove("Green")
    println(colorSet)
}

//A function for demonstrating maps
fun maps() {
    val colorMap = mapOf(
        Pair("Red", 0xFF0000),
        Pair("Green", 0x00FF00),
        Pair("Blue", 0x0000FF)
    )
    println(colorMap)

    val stateMap = mutableMapOf<String, String>()
    stateMap.put("CA", "Sacramento")
    stateMap.put("OR", "Salem")
    stateMap.put("WA", "Olympia")
    println(stateMap)
    for ((state, capital) in stateMap) {
        println("The state capital of $state is $capital")
    }
    
}