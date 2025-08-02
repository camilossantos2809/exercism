import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard let _diameter=diameter, let _slices=slices else {
        return nil
    }
    if _diameter < 0 || _slices < 1 {
        return nil
    }
    let angle = Double(360 / _slices)
    let radius = _diameter / 2
    return (angle * Double.pi * pow(radius, 2)) / 360
}

func biggestSlice(
    diameterA: String, slicesA: String,
    diameterB: String, slicesB: String
) -> String {
    let maybeAreaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let maybeAreaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    guard let areaA = maybeAreaA else {
        if (maybeAreaB != nil) { return "Slice B is bigger" }
        return "Neither slice is bigger"
    }
    guard let areaB = maybeAreaB else {
        if (maybeAreaA != nil) { return "Slice A is bigger" }
        return "Neither slice is bigger"
    }
    if areaA > areaB {
        return "Slice A is bigger"
    }
    if areaB > areaA {
        return "Slice B is bigger"
    }
    return "Neither slice is bigger"
}
