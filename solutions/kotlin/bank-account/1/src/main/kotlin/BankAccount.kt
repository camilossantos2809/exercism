class BankAccount {
    private var _balance = 0L
    val balance: Long
        get() {
            if (this.closed) throw IllegalStateException("Account is closed")
            return this._balance
        }
    private var closed = false
    private val locked = Any()

    fun adjustBalance(amount: Long){
        if (this.closed) throw IllegalStateException("Account is closed")
        synchronized(locked) {
            this._balance += amount
        }
    }

    fun close() {
        this.closed = true
        this._balance = 0
    }
}
