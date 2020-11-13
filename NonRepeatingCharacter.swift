import Foundation

let text = "Capability development"

func getFirstNonRepeatingCharacter(_ str: String)  -> Character?{
   var characterDict = [Character : Int]()

   for character in str{
       if let count = characterDict[character]{
         characterDict[character] = count + 1
       }else{
        characterDict[character] = 1
       }
   }

   let filtered = characterDict.filter { $0.value == 1}
   for character in str{
       if let _ = filtered[character]{
        return character
       }
   }

   return nil
}

if let char = getFirstNonRepeatingCharacter(text) {
  print("The first non-repeating character is \(char).")  
} else {
    print("No repeating characters are found")
}
