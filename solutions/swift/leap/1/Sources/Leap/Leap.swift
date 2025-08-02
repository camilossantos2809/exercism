struct Year {
    let calendarYear: Int
    var isLeapYear: Bool
    
    init (calendarYear: Int) {
        self.calendarYear = calendarYear
        self.isLeapYear =  calendarYear % 4 == 0 && (calendarYear % 100 != 0 || calendarYear % 400 == 0)
    }
    
    
}
