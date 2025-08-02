import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
    poem.split(separator: "\n", omittingEmptySubsequences: false).map(String.init)
}

func firstLetter(_ line: String) -> Character {
    line.first ?? "_"
}

func capitalize(_ phrase: String) -> String {
    phrase.capitalized
}

func trimSentence(_ line: String) -> String {
    line.trimmingCharacters(in: .whitespacesAndNewlines)
}

func lastLetter(_ line: String) -> Character {
    line.last ?? "_"
}

func backDoorPassword(_ phrase: String) -> String {
    "\(phrase.capitalized), please"
}

func ithLetter(_ line: String, i: Int) -> Character {
    if i < line.count{
        let index = line.index(line.startIndex, offsetBy: i)
        return line[index]}
    return " "
}

func secretRoomPassword(_ phrase: String) -> String {
    "\(phrase.uppercased())!"
}
