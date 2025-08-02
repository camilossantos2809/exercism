func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
    { inputPassword in
        if inputPassword == password { return secret }
        return "Sorry. No hidden secrets here."
    }
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  let firstNumber = f(room)
    let secondNumber = f(firstNumber)
    let thirdNumber = f(secondNumber)
    return (firstNumber,secondNumber,thirdNumber)
}
