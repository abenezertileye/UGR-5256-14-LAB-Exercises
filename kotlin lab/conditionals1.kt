fun main() {
    val side1 = 5
    val side2 = 5
    val side3 = 5

    val triangleType = determineTriangleType(side1, side2, side3)
    println("The triangle with sides $side1, $side2, and $side3 is $triangleType.")
}

fun determineTriangleType(side1: Int, side2: Int, side3: Int): String {
    return if (side1 == side2 && side2 == side3) {
        "Equilateral"
    } else if (side1 == side2 || side1 == side3 || side2 == side3) {
        "Isosceles"
    } else {
        "Scalene"
    }
}
