fun exception1() {
    try {
        print("Value 1: ")
        val value1:String? = readLine()
        val d1:Double = value1!!.toDouble()

        print("Value 2: ")
        val value2:String? = readLine()
        val d2:Double = value2!!.toDouble()

        val sum = d1 + d2
        println("Answer: $sum")
    } catch (e: KotlinNullPointerException) {
        println("Value was Null")
    } catch (e: NumberFormatException) {
        println("${e.message} is not a number")
    }
}