fun main() {
    val start = 10
    val end = 30

    println("Prime numbers between $start and $end:")
    var num = start
    while (num <= end) {
        if (isPrime(num)) {
            println(num)
        }
        num++
    }
}

fun isPrime(n: Int): Boolean {
    if (n <= 1) {
        return false
    }
    var i = 2
    while (i * i <= n) {
        if (n % i == 0) {
            return false
        }
        i++
    }
    return true
}
