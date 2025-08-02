let WORK_HOURS_DAY = 8
let WORK_DAYS_IN_MONTH = 22.0

func calcDiscount(value:Double, discount: Double) -> Double {
    value * (1 - (discount / 100))
}

func dailyRateFrom(hourlyRate: Int) -> Double {
  Double(hourlyRate * WORK_HOURS_DAY)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let montlyRate = dailyRateFrom(hourlyRate: hourlyRate) * WORK_DAYS_IN_MONTH
    let netValue = calcDiscount(value: montlyRate, discount: discount)
    return netValue.rounded(.toNearestOrEven)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dailyRate = dailyRateFrom(hourlyRate: hourlyRate)
    let netValue = calcDiscount(value: dailyRate, discount: discount)
    return (budget / netValue).rounded(.down)
}
