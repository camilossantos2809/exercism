import Foundation

struct Gigasecond {
    var description: String?
    
    init?(from description: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        
        guard let formatedDate = formatter.date(from: description) else { return nil }
        let gigaSeconds = formatedDate.addingTimeInterval(1_000_000_000)
        self.description = formatter.string(from: gigaSeconds)
    }
}
