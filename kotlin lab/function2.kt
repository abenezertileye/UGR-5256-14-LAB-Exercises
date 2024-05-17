fun main() {
    val number = 5

    val factorial = calculateFactorial(number)
    println("Factorial of $number is $factorial")
}

fun calculateFactorial(n: Int): Int {
    return if (n == 0 || n == 1) {
        1
    } else {
        n * calculateFactorial(n - 1)
    }
}
