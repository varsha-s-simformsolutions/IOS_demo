import Cocoa

//define var and add int value
let a = 10
let constant = 20
var res = a + constant

//try to change constant
let languageName = "Swift"
//languageName = "Swift++"

//add string
var a_a = "Hello"
var b = "World"
var result = a_a + b

//multiply
var bookPrice = 39
var numOfCopies = 5
var totalPrice = bookPrice * numOfCopies
var totalPriceMessage = "The price of the book is $" + String(totalPrice)


//Type annotation
var welcomeMessage: String
welcomeMessage = "Hello"


//if condition
var timeYouWakeUp = 7
if timeYouWakeUp == 6 {
    print("Cook yourself a big breakfast!")
} else {
    print("Go out for breakfast")
}


//switch case
var timeYouWake_Up = 6

switch timeYouWake_Up {
case 6:
    print("Cook yourself a big breakfast!")
default:
    print("Go out for breakfast")
}


//if else if
var bonus = 5000

if bonus >= 10000 {
    print("I will travel to Paris and London!")
} else if bonus >= 5000 && bonus < 10000 {
    print("I will travel to Tokyo")
} else if bonus >= 1000 && bonus < 5000 {
    print("I will travel to Bangkok")
} else {
    print("Just stay home")
}

var bookCollectionDict = ["253625423": "Tool of Titans", "2587625": "Rework", "2582874": "Authority"]
bookCollectionDict["2587625"]

var jobTitle: String?
jobTitle = "iOS Developer"
if jobTitle != nil {
    _ = "Your job title is " + jobTitle!
}

//Tuple
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

//individual elements in a tuple
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")

//optionals = situations where a value may be absent
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

let possibleNumber1 = 123
let convertedNumber1 = String(possibleNumber1)

//nil
var serverResponseCode: Int? = 404
serverResponseCode = nil

if convertedNumber != nil {
    print("convertedNumber contains some integer value of \(convertedNumber!).")
}

//optional binding = temporary constant or variable
if let actualNumber = Int(possibleNumber) {
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
}

if let firstNo = Int("4"), let secondNo = Int("42"), firstNo < secondNo && secondNo < 100 {
    print("\(firstNo) < \(secondNo) < 100")
}

if let firstNo = Int("4") {
    if let secondNo = Int("42") {
        if firstNo < secondNo && secondNo < 100 {
            print("\(firstNo) < \(secondNo) < 100")
        }
    }
}
//implicitly unwrapped optional   ------------------------
let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let possibleString1: String = "An optional string."
let forcedString1: String = possibleString1

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString     //no question mark
 /*
//Error Handling
func makeSandwich() throws {
    // ...
}
func eatASandwich() throws {
    // ...
}

do {
    try makeSandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
 */
//Assertions and preconditions
let age = 3
assert(age >= 0, "A person's age can't be less than zero.")

//compare two tuples
(1, "zebra") > (1, "apple")
(3, "apple") < (3, "bird")
(4, "dog") == (4, "dog")
 
//ternary conditional operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 10 : 20)
 
//Range operator
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//half open range operator
let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}

//one side range
for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

//NOT
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}

//AND
let enteredDoorCode = true
let passedRetinaScan = true
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
 
//OR
let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

//combine
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

let three = 3
let minusThree = -three
let plusThree = -minusThree
 


let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"
print(wiseWords)
print(dollarSign)
print(blackHeart)
print(sparklingHeart)


//extended delimiters
let threeMoreDoubleQuotationMarks = #"""
Here are three more double quotes: """
"""#

//String Mutability
var variableString = "Horse"
variableString += " and carriage"

//String Array
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

//Concatenating Strings and Characters
let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
print(welcome)

var instruction = "look over"
instruction += string2
print(instruction)
let exclamationMark: Character = "!"
welcome.append(exclamationMark)

//multiline string literals
let badStart = """
one
two
"""
let end = """
three
"""
print(badStart + end)
let goodStart = """
one
two

"""
print(goodStart + end)

//String interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Float(multiplier) * 2.5)"
print(message)
print(#"Write an interpolated string in Swift using \(multiplier)."#)
print(#"6 times 7 is \#(6 * 7)."#)

//count Character
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print(" \(unusualMenagerie.count) characters")

//String Indices
let greeting = "Varsha Shrivastwa!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
let index1 = greeting.index(greeting.startIndex, offsetBy: 2)
let index2 = greeting.index(greeting.startIndex, offsetBy: 3)
//let index3 = greeting.index(greeting.startIndex, offsetBy: 19)    //Error Index out of bound
greeting[index]
greeting[index1]
greeting[index2]
//greeting[index3]

//individual characters
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}


//Insert char at specific point
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

//remove char from specific point
welcome.remove(at: welcome.index(before: welcome.endIndex))
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

//sub string
let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]

let newString = String(beginning)

//Comparing Strings
let quotation = "We're a lot alike"
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

let eAcuteQuestion = "You want coff\u{E9}\u{E9} ?"

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

//prefix
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var act2SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 2 ") {
        act2SceneCount += 1
    }
}
print("There are \(act2SceneCount) scenes in Act 2")

//Postfix
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")


let dogString = "Dog‼🐶"
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")


var str = "Hello World"
print(str)

//Variables

var typeInt = 10
print(typeInt)
let exclamationMark1: Character = "!"
print(exclamationMark1)
let typeString: String = "Swift"
print(typeString)
var typeFloat: Float = 10.01
print(typeFloat)
var typeDouble: Double = 105658464
print(typeDouble)

//Addition of 5
var add = 10
var res1 = add + 5
print(res1)

let rate = 15
var amount = 10000
var time = 2
var si = amount * (rate)/100 * time
print(si)


var typeInt1 = 20
var typeFloat1 = 10.0
var addition = Double(typeInt1) + typeFloat1;
print(addition)
var sub = Double(typeInt1) - typeFloat1;
print(sub)
var multi = Double(typeInt1) * typeFloat1;
print(multi)
var division = Double(typeInt1) / typeFloat1;
print(division)



