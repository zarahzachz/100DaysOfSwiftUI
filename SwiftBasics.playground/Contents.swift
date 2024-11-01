import Cocoa

var greeting = "Hello, playground"

// Day 1 - Variables, constants, strings, and numbers

var turtle = "Michelangelo"
turtle = "Raphael"
turtle = "Donatello"
turtle = "Leonardo"

let name = "Sarah"
// name = "Sandy"

let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

let nameLength = actor.count
print(nameLength)

print(result.uppercased())

print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))

let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

var counter = 10
counter += 5
counter *= 2
counter -= 10
counter /= 2

let number = 69
number.isMultiple(of: 3)

let num = 0.1 + 0.2

var castor = "Nicolas Cage"
castor = "John Travolta"
// castor = 5

// Day 2 - Booleans, string interpolation, and checkpoint 1

let fileName = "paris.jpg"
fileName.hasSuffix(".jpg")

number.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated.toggle()
isAuthenticated.toggle()

let strOne = "Hello, "
let strTwo = "World!"
let strThree = strOne + strTwo

let artistName = "Taylor"
let artistAge = 31
let artistIntro = "Hello, my name is \(artistName) and I'm \(artistAge + 3) years old."

// Checkpoint 1

let tempInCelcius = 26
let tempInFerenheit = (tempInCelcius * 9) / 5 + 32

print("It's \(tempInCelcius)°C, or \(tempInFerenheit)°F today.")

// Day 3 - Arrays, dictionaries, sets, and enums

var beatles = ["John", "Paul", "George", "Ringo"]
var numbers = [3, 1, 4, 2]

beatles[0]
beatles[0] = "Jack"
beatles
beatles.append("Mark")

var score2 = Array<Int>()
score2 = [Int]()

beatles.count
beatles.contains("John")
beatles.remove(at: 4)
beatles.contains("Mark")
beatles.sorted()
beatles.reversed()

var employee = ["Bob Belcher", "46", "Head chef", "Wonder Wharf"]
print("Employee name: \(employee[0])")
print("Employee title: \(employee[2])")

var employee2 = ["name": "Bob Belcher", "age": "46", "title": "Head chef", "location": "Wonder Wharf"]
employee2["name"]
employee2["location"]
employee2["age"]

// Dictionary order changes each time its called - just like a Set

print("\(employee2["name", default: "Unknown"])")

var actors = Set(["Jude Law", "Leonardo DiCaprio", "Brad Pitt", "Robert De Niro"])
actors.insert("Denzel Washington")
actors.contains("Robert De Niro")
actors.remove("Brad Pitt")
actors.sorted()

enum TeenageMutantNinjaTurtles {
    case leonardo, donatello, raphael, michelangelo
}

var turtle2 = TeenageMutantNinjaTurtles.donatello
turtle2 = .raphael

// Day 4 - Type annotations and checkpoint 2

let userName: String

userName = "foobar8008"
//userName = "new name"

// Checkpoint 2

let arrayOfStrings = ["Happy", "happy", "joy", "joy"]
print("There are \(arrayOfStrings.count) items in the array. There are \(Set(arrayOfStrings).count) unique items in the array.")

// Day 5 - If, switch, and the ternary operator

var numbers5 = [1, 2, 3]
numbers5.append(4)
if (numbers5.count > 3) {
    numbers5.remove(at: 0)
}
numbers5

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

switch transport {
    case .airplane, .helicopter:
        print("Let's fly!")
    case .bicycle:
        print("I hope there's a bike path.")
    case .car:
        print("Time for some traffic!")
    case .scooter:
        print("Gonna rent a scooter.")
}
