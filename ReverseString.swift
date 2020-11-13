import Foundation

let text = "Capability development"

func reverString(input:String)-> String{
var reverseString = ""
    for char in input.characters{
        reverseString = "\(char)" + reverseString 
    }
    
    return reverseString
}

 print("The reverse string is \(reverString(input:text)).")  
