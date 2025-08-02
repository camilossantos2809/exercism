
func timeToPrepare(drinks: [String]) -> Double {
    drinks.reduce(0.0) {sum, drink in
        switch drink {
        case "beer","soda","water": return sum + 0.5
        case "shot": return sum + 1.0
        case "mixed drink": return sum + 1.5
        case "fancy drink": return sum + 2.5
        case "frozen drink": return sum + 3.0
        default: return sum + 0
        }
    }
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var limesCount = 0
    var wedges = needed
    for lime in limes {
        if wedges > 0 {
            limesCount += 1
            switch lime {
            case "small":  wedges -= 6
            case "medium": wedges -= 8
            case "large":  wedges -= 10
            default:       wedges
            }
        }
        continue
    }
    return limesCount
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var _minutesLeft = Double(minutesLeft)
    var _remainingOrders = remainingOrders
    for order in remainingOrders {
        if _minutesLeft > 0 {
            let totalTime = timeToPrepare(drinks: order)
            _minutesLeft -= totalTime
            _remainingOrders.removeFirst()
        } else {
            continue
        }
    }
    return _remainingOrders
}

typealias OrderTrackerResult = (
    beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
)

func orderTracker(orders: [(drink: String, time: String)]) -> OrderTrackerResult {
    let beerOrders = orders.filter { $0.drink == "beer" }
    let sodaOrders = orders.filter { $0.drink == "soda" }
    
    func buildItem(_ order:[(drink: String, time: String)]) -> (first: String, last: String, total: Int)? {
        guard let first = order.first, let last = order.last else {
            return nil
        }
        return (first: first.time, last: last.time, total: order.count )
    }
    
    return (
        beer: buildItem(beerOrders),
        soda: buildItem(sodaOrders)
    )
}
