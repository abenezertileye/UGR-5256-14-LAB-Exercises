fun main() {
    val number = 12321
    val originalNumber = number
    var reverse = 0

    var remainder: Int
    var temp = originalNumber

    while (temp != 0) {
        remainder = temp % 10
        reverse = reverse * 10 + remainder
        temp /= 10
    }

    if (originalNumber == reverse) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}
