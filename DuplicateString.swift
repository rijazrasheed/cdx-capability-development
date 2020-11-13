import Foundation

let text = "Capability development"

var characters = [String.Element]()
var duplicateCharacters = [String.Element]()

for character in text {
    characters.append(character)
}

for (index, character) in characters.enumerated() {
    var position = index + 1
    while position < characters.count {
        if(characters[position] == characters[index] && !duplicateCharacters.contains(character)){
            duplicateCharacters.append(character)
        }
        position += 1
    }
}
print("The duplicate characters are \(duplicateCharacters).")
