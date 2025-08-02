let expectedMinutesInOven = 40

func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: Int) -> Int {
    let minutesPerLayer = 2
    return layers * minutesPerLayer
}

func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    let prep = preparationTimeInMinutes(layers:layers)
     return prep + elapsedMinutes
}
