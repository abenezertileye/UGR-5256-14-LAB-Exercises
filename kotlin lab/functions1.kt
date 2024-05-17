fun main() {
    val numbers = intArrayOf(5, 2, 7, 1, 9, 3)

    val sortedArray = sortArray(numbers)
    println("Sorted array: ${sortedArray.joinToString(", ")}")
}

fun sortArray(numbers: IntArray): IntArray {
    return numbers.sorted().toIntArray()
}
