class Matrix(matrixAsString: String) {
    private val rows = matrixAsString.split("\n")

    fun column(colNr: Int): List<Int> {
        return rows.map { row -> row.trim().split(" ")[colNr - 1] }.map { it.toInt() }
    }

    fun row(rowNr: Int): List<Int> {
        return rows[rowNr - 1].split(" ").map { it.toInt() }
    }
}

