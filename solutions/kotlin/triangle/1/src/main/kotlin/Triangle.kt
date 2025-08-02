class Triangle<out T : Number>(private val a: T, private val b: T, private val c: T) {
    private val doubleA = a.toDouble()
    private val doubleB = b.toDouble()
    private val doubleC = c.toDouble()

    init {
        val isAllZeroSides = doubleA == 0.0 && doubleB == 0.0 && doubleC == 0.0
        val hasSomeSideGreaterThanSum = listOf(
            doubleC > (doubleA + doubleB),
            doubleB > (doubleA + doubleC),
            doubleA > (doubleB + doubleC)
        ).any { it }
        if (isAllZeroSides || hasSomeSideGreaterThanSum) throw IllegalArgumentException()
    }

    val isEquilateral: Boolean = doubleA == doubleB && doubleB == doubleC && doubleC == doubleA
    val isScalene: Boolean = doubleA != doubleB && doubleB != doubleC && doubleC != doubleA
    val isIsosceles: Boolean = doubleA == doubleB || doubleB == doubleC || doubleC == doubleA
}
