typealias Wires = (String, String, String)

let flip = { (wires:Wires) -> Wires in (wires.1, wires.0 ,wires.2) }


let rotate = { (wires: Wires) -> Wires in (wires.1, wires.2, wires.0) }

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
    return { (id: UInt8, wires: (String, String, String)) -> (String, String, String) in
        var resultWires = wires
        for i in 0..<8 {
          let bit = (id >> i) & 1
          if bit == 0 {
            resultWires = flipper(resultWires)
          } else {
            resultWires = rotator(resultWires)
          }
        }
        return resultWires
      }
}
