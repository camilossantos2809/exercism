func getCard(at index: Int, from stack: [Int]) -> Int {
  stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
     stack.enumerated().map { (_index, card) in
         (_index == index) ? newCard : card
    }
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    stack + [newCard]
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    if index < 0 || stack.count < index {
        return stack
    }
    var newStack = stack
    newStack.remove(at: index)
    return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    if stack.isEmpty {
        return stack
    }
    var newStack = stack
    newStack.removeLast()
    return newStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
     [newCard] + stack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    if stack.isEmpty {
        return stack
    }
    var newStack = stack
    newStack.removeFirst()
    return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
    stack.reduce(0) { count, card in
        if card % 2 == 0 {
            return count + 1
        }
        return count
    }
}
