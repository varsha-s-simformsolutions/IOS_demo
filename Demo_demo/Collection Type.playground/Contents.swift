import Cocoa

//Array
var arr = [Int]()
print("arr is of type [Int] with \(arr.count) items.")
arr.append(3)
arr = [1,2,3,4]  //empty array created
print("arr is of type [Int] with \(arr.count) items.")

var countArray = Array(repeating: 5, count: 3)
print(countArray)

var countArray1 = Array(repeating: 10, count: 3)
print(countArray1)

print(countArray + countArray1)        //counting total array

//string array
var countArray2 = Array(repeating: "Hello", count: 3)
print(countArray2)

var countArray3 = Array(repeating: "Hell", count: 3)
print(countArray3)

print(countArray2 + countArray3)      //counting string array

//String Array
var shoppingList = ["Bread", "Milk", "Juice", "Cerial", "Choclate"]
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
//Adding Flour to our list
shoppingList.append("Flour")
print(shoppingList)

//another way to add item in list
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print(shoppingList)

var firstItem = shoppingList[0]
print(firstItem)               //fetch first item from list
shoppingList[0] = "Brown Bread"    //updating shopinglist
print(shoppingList)

shoppingList[4...6] = ["Bananas", "Apples"]     //Another way to update list
print(shoppingList)

shoppingList.insert("Maple Syrup", at: 0)      //Adding new item to list
print(shoppingList)

shoppingList.insert("Flour", at: 6)
print(shoppingList)

let mapleSyrup = shoppingList.remove(at: 0)
print(shoppingList)

//Iterating array
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {      //return tuple
    print("Item \(index + 1): \(value)")
}



/*You can bridge between Set and NSSet using the as operator. For bridging to be possible, the Element type of a set must be a class, an @objc protocol (a protocol imported from Objective-C or marked with the @objc attribute), or a type that bridges to a Foundation type.
 
 Bridging from Set to NSSet always takes O(1) time and space. When the set’s Element type is neither a class nor an @objc protocol, any required bridging of elements occurs at the first access of each element, so the first operation that uses the contents of the set (for example, a membership test) can take O(n).

 Bridging from NSSet to Set first calls the copy(with:) method (- copyWithZone: in Objective-C) on the set to get an immutable copy and then performs additional Swift bookkeeping work that takes O(1) time. For instances of NSSet that are already immutable, copy(with:) returns the same set in constant time; otherwise, the copying performance is unspecified. The instances of NSSet and Set share buffer using the same copy-on-write optimization that is used when two instances of Set share buffer.
 
 Use the contains(_:) method to test whether a set contains a specific element.

 Use the “equal to” operator (==) to test whether two sets contain the same elements.

 Use the isSubset(of:) method to test whether a set contains all the elements of another set or sequence.

 Use the isSuperset(of:) method to test whether all elements of a set are contained in another set or sequence.

 Use the isStrictSubset(of:) and isStrictSuperset(of:) methods to test whether a set is a subset or superset of, but not equal to, another set.

 Use the isDisjoint(with:) method to test whether a set has any elements in common with another set.

 You can also combine, exclude, or subtract the elements of two sets:

 Use the union(_:) method to create a new set with the elements of a set and another set or sequence.

 Use the intersection(_:) method to create a new set with only the elements common to a set and another set or sequence.

 Use the symmetricDifference(_:) method to create a new set with the elements that are in either a set or another set or sequence, but not in both.

 Use the subtracting(_:) method to create a new set with the elements of a set that are not also in another set or sequence.

 You can modify a set in place by using these methods’ mutating counterparts: formUnion(_:), formIntersection(_:), formSymmetricDifference(_:), and subtract(_:).*/
//set
var ingredients: Set<String> = ["cocoa beans", "sugar", "cocoa butter", "salt"]
print(ingredients)
if ingredients.contains("sugar") {
    print("No thanks, too sweet.")
}
ingredients.insert("Coffee")     //add element
print(ingredients)

if let removedIngre = ingredients.remove("1") {    //remove element
    print("\(removedIngre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
print(ingredients)

if ingredients.contains("Funk") {    //contains a particular item
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

//sorted
for genre in ingredients.sorted() {
    print("\(genre)")
}

//fundamental set operation
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [ 3, 5, 7]

oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
evenDigits.subtracting(singleDigitPrimeNumbers).sorted()
evenDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

oddDigits.isSubset(of: singleDigitPrimeNumbers)
singleDigitPrimeNumbers.isSubset(of: oddDigits)

oddDigits.isSuperset(of: singleDigitPrimeNumbers)
singleDigitPrimeNumbers.isSuperset(of: oddDigits)

oddDigits.isStrictSubset(of: singleDigitPrimeNumbers)
singleDigitPrimeNumbers.isStrictSubset(of: oddDigits)

oddDigits.isStrictSubset(of: singleDigitPrimeNumbers)
singleDigitPrimeNumbers.isStrictSubset(of: oddDigits)

oddDigits.isStrictSubset(of: singleDigitPrimeNumbers)
singleDigitPrimeNumbers.isStrictSubset(of: oddDigits)

//dictionary
var alphabet: [Int: String] = [1: "aa", 2: "bb", 3: "cc", 4: "dd", 5: "ee"]
print(alphabet)
if alphabet.isEmpty {
    print("The alphabet dictionary is empty.")
} else {
    print("The alphabet dictionary is not empty.")
}

//add new item
alphabet[6] = "ff"
print(alphabet)

if let alphabetName = alphabet[5] {
    print("The name of the alphabet is \(alphabetName).")
} else {
    print("That alphabet is not in the alphabet dictionary.")
}

if let removedValue = alphabet.removeValue(forKey: 6) {
    print("The removed alphabet's name is \(removedValue).")
} else {
    print("The alphabet dictionary does not contain a value for 6.")
}
print(alphabet)

//Iterating Over a Dictionary
for (alphabetCode, alphabetName) in alphabet {
    print("\(alphabetCode): \(alphabetName)")
}

let power = 10
var answer = 1
for _ in 1...power {
    answer * answer
}
print("Answer \(answer)")
