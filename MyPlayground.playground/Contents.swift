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
