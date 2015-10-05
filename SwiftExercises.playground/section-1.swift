import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
 let tempCheese = "My favorite cheese is "+cheese+"."
    return tempCheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/


let numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE

var newNumberArray = numberArray
[newNumberArray.append(5)]
newNumberArray






let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
var newNumberDictionary = numberDictionary
newNumberDictionary[5] = "five"
newNumberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for index in 1...10 {
    print("Index is \(index)")
}


// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for index in 1..<10{
    print("Index is \(index)")
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    
    var favdrinks = [String]()
//    let newVariable = characters[]["favorite drink"]
    
    for var character in characters {
        favdrinks.append(character["favorite drink"]!)
    }
//    for var i=0;i<characters.count;i++ {
//        var character = characters[i]
//        favdrinks.append(character["favorite drink"]!)
//    }

    return favdrinks

}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func convertArraytoString(strings:Array<String>) -> String{
    
     let joinedString = strings.joinWithSeparator(";")
    return joinedString
}

let expectedOutput = "milk;eggs;bread;challah"
let actualOutput=convertArraytoString(strings)
if expectedOutput == actualOutput {
    print("These two strings are considered equal")
}
/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

//print(reversed)
// Use a closure to sort this array alphabetically
// WORK HERE

func sortAlphabetical(s1: String, _ s2: String) -> Bool {
    return s1 < s2
}

var reversedCerealArray = cerealArray.sort(sortAlphabetical)