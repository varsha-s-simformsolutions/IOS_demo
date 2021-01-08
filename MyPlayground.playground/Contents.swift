import Cocoa

let a = 10
let constant = 20
var res = a + constant

var a_a = "Hello"
var b = "World"
var result = a_a + b

var bookPrice = 39
var numOfCopies = 5
var totalPrice = bookPrice * numOfCopies
var totalPriceMessage = "The price of the book is $" + String(totalPrice)

var timeYouWakeUp = 7

if timeYouWakeUp == 6 {
    print("Cook yourself a big breakfast!")
} else {
    print("Go out for breakfast")
}

var timeYouWake_Up = 6

switch timeYouWake_Up {
case 6:
    print("Cook yourself a big breakfast!")
default:
    print("Go out for breakfast")
}

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
    var msg = "Your job title is " + jobTitle!
}


