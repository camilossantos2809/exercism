import java.lang.IllegalArgumentException

object Hamming {

    fun compute(leftStrand: String, rightStrand: String): Int {
        if (leftStrand.length != rightStrand.length) throw IllegalArgumentException("left and right strands must be of equal length")
        if (leftStrand.isEmpty() || rightStrand.isEmpty()) return 0
        return leftStrand.foldIndexed(0) { index, acc, letter ->
            if (letter != rightStrand[index]) {
                acc + 1
            } else {
                acc
            }
        }
    }
}
