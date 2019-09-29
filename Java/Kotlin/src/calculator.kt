fun calculator() {
    try{
        print("Enter the first value: ")
        val num1 = readLine()
        val d1:Double = num1!!.toDouble()

        print("Enter the second value: ")
        val num2 = readLine()
        val d2:Double = num2!!.toDouble()

        print("Select an operation (+ - / *): ")
        val operation:String? = readLine()
        val result = calcValues(d1, d2, operation)
        println("The result is $result")
    } catch(e: KotlinNullPointerException) {
        println("Value was null")
    } catch (e: NumberFormatException) {
        println("${e.message} is not a number")
    } catch(e: Exception) {
        println(e.message)
    }
}

fun calcValues(param1: Double, param2: Double, op: String?): Double {
    if (op.equals("+")) {
        return param1 + param2
    } else if (op.equals("-")) {
        return param1 - param2
    } else if (op.equals("/")) {
        return param1 / param2
    } else if (op.equals("*")) {
        return param1 * param2
    } else {
        println("That was not a legal operation")
        return -1.0
    }
}