import java.time.LocalTime
import java.time.format.DateTimeFormatter

fun main() {
    val currentTime = LocalTime.now()    
    val formatter = DateTimeFormatter.ofPattern("HH:mm:ss")
    val currentTimeString = currentTime.format(formatter)
    
    println("Current time: $currentTimeString")
}
