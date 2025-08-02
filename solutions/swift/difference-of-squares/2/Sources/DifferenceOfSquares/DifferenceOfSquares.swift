import Foundation

struct Squares {
    var squareOfSum: Int {
        let sum = (1...naturalNumbers).reduce(0, +)
        return sum * sum
    }
    var sumOfSquares: Int { (1...naturalNumbers).reduce(0){ (sum, curr) in
        let square = curr * curr
        return sum + square
    }
        
    }
    var differenceOfSquares: Int { squareOfSum - sumOfSquares }
    var naturalNumbers: Int
    
    init(_ naturalNumbers: Int) {
        self.naturalNumbers = naturalNumbers
        
    }
}
