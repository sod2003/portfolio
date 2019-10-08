import java.math.BigDecimal

class MathLib {

    var runningTotal = 0.0

    fun addValue(value: Double) {
        runningTotal += value
    }

    companion object {
        fun addValues(num1: Double, num2: Double) = num1 + num2
        fun subtractValues(num1: Double, num2: Double) = num1 - num2
        fun multiplyValues(num1: Double, num2: Double) = num1 * num2
        fun divideValues(num1: Double, num2: Double) = num1 / num2

        fun getInput(prompt: String): Double {
            print(prompt)
            val string: String? = readLine()
            val num = string!!.toBigDecimal()
            return num.toDouble()
        }
    }
}