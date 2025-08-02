import java.time.LocalDate
import java.time.LocalDateTime

class Gigasecond {
    private var dateTime: LocalDateTime = LocalDateTime.now()

    constructor(date: LocalDate) {
       this.dateTime = date.atStartOfDay()
    }

    constructor(dateTime: LocalDateTime){
        this.dateTime = dateTime
    }

    val date: LocalDateTime get() = dateTime.plusSeconds(1_000_000_000)
}
