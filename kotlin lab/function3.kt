fun main() {
    val str1 = "abcdefg"
    val str2 = "hello"

    println("String \"$str1\" contains unique characters: ${hasUniqueCharacters(str1)}")
    println("String \"$str2\" contains unique characters: ${hasUniqueCharacters(str2)}")
}

fun hasUniqueCharacters(str: String): Boolean {
    val charSet = mutableSetOf<Char>()
    for (char in str) {
        if (charSet.contains(char)) {
            return false
        }
        charSet.add(char)
    }
    return true
}
