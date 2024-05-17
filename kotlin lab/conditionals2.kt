fun main() {
    val hoursWorked = 45
    val hourlyRate = 20

    val totalSalary = calculateTotalSalary(hoursWorked, hourlyRate)
    println("Total salary: $$totalSalary")
}

fun calculateTotalSalary(hoursWorked: Int, hourlyRate: Int): Double {
    val regularHours = if (hoursWorked <= 40) hoursWorked else 40
    val overtimeHours = if (hoursWorked <= 40) 0 else hoursWorked - 40
    
    val regularPay = regularHours * hourlyRate
    val overtimePay = overtimeHours * (hourlyRate * 1.5)
    
    return regularPay + overtimePay
}
