fun main() {
    val month = 4
    val day = 15

    val season = determineSeason(month, day)
    println("The season for $month/$day is $season.")
}

fun determineSeason(month: Int, day: Int): String {
    return when (month) {
        in 3..5 -> "Spring"
        in 6..8 -> "Summer"
        in 9..11 -> "Autumn"
        12, 1, 2 -> "Winter"
        else -> "Invalid month"
    }
}
