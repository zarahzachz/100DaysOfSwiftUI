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

// Day 6 - Loops, summary, and checkpoint 3

for i in 1...12 {
    print("The \(i) times table:")
    for j in 1...12 {
        print("  \(i) x \(j) = \(i * j)")
    }
    print()
}

//var diceRoll = 0
var diceRoll = Int()

while diceRoll != 20 {
    diceRoll = Int.random(in: 1...20)
    print("I rolled a \(diceRoll).")
}

print("Critical hit!")

let filenames = ["me.jpg", "resume.txt", "sophie.jpg"]
for filename in filenames {
    if filename.hasSuffix("jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}

let number1 = 7
let number2 = 17
var multiples = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count > 10 {
            break
        }
    }
}

print(multiples)

// Checkpoint 3

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else {
        print(i)
    }
}

// Day 7 - Functions, parameters, and return values

func compareStrings(_ str1: String, _ str2: String) -> Bool {
    str1.sorted() == str2.sorted()
}

compareStrings("abc", "cbd")

func pythagorus(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

pythagorus(a: 3, b: 4)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

//let user = getUser()
//let firstName = user.firstName
//let lastName = user.lastName
let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

// Day 8 - Default values, throwing functions, and checkpoint 4

// Checkpoint 4

enum SquareRootError: Error {
    case outOfBounds, noRoot
}

func findSquareRoot(_ num: Int) throws -> Int {
    var result = Int()
    
    if num < 1 || num > 10_000 {
        throw SquareRootError.outOfBounds
    }
    
    for i in 1...100 {
        if num == i * i {
            result = i
        }
    }
    
    if result == 0 {
        throw SquareRootError.noRoot
    }
    
    return result
}

let testNum = 9

do {
    var result = try findSquareRoot(testNum)
    print(result)
} catch SquareRootError.outOfBounds {
    print("Please use a number greater than 1 and less than 10,000.")
} catch SquareRootError.noRoot {
    print("No square root found.")
} catch {
    print("There was an error.")
}

// Day 9 - Closures, passing functions into functions, and checkpoint 5

func greetUser() {
    print("Hello, there!")
}
greetUser()

let copyGreetUser = greetUser
copyGreetUser()

let greetAgain = { (name: String) -> Void in
    print("Hello, \(name)!")
}
greetAgain("Peter")

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//    
//    return name1 < name2
//})
let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
}
print(captainFirstTeam)

// Checkpoint 5

let luckyNumbers: [()] = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
    .filter { !$0.isMultiple(of: 2) }
    .sorted { $0 < $1 } //.sorted()
    .map { print("\($0) is a lucky number") }

// Day 10 - Structs, computed properties, and property observers

struct Employee {
    let name: String
    
//    var vacationRemaining: Int = 14
    
    var vacationAllocated = 14
    var vacationTaken = 0
    
//    mutating func takeVacation(days: Int) {
//        if vacationRemaining > days {
//            vacationRemaining -= days
//            print("I'm going on vacation!")
//            print("Days remaining: \(vacationRemaining)")
//        } else {
//            print("Oops! There aren't enough days remaining.")
//        }
//    }
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

//var archer = Employee(name: "Archer Sterling", vacationRemaining: 20)
//archer.takeVacation(days: 5)

var archer = Employee(name: "Sterling Archer")
archer.vacationTaken += 4
archer.vacationRemaining = 5
archer.vacationTaken += 4
archer.vacationRemaining
archer.vacationAllocated

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Sterling Archer")
app.contacts.append("Lana Kane")
app.contacts.append("Pam Poovey")

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name // tried setting to `foo` but swift yelled at me. seems it has to have same name as the property?
        self.number = Int.random(in: 1...100)
    }
}

let player = Player(name: "Pete Rose")
player.name
player.number
player.number // the number isn't constant and can change every time its called. interesting because number is a `let`

// Day 11 - Access control, static properties and methods, and checkpoint 6

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.funds
account.deposit(amount: 100)
//account.funds = 10_000
account.withdraw(amount: 30)
account.funds

struct AppData {
    static let version = "1.3.beta.2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.apple.com"
}

AppData.version

struct Employee11 {
    let username: String
    let password: String
    
    static let example = Employee11(username: "foo-bar", password: "baz123!")
}

Employee11.example.username

// Checkpoint 6

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var currentGear: Int
    
    init(model: String, numberOfSeats: Int, currentGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = currentGear
    }
    
    mutating func changeGear(direction: String) -> Bool {
        if direction == "up" && currentGear != 6 {
            currentGear += 1
            return true
        } else if direction == "down" && currentGear != 1 {
            currentGear -= 1
            return true
        } else {
            return false
        }
    }
}

var buick = Car(model: "Buick", numberOfSeats: 6, currentGear: 5)

buick.changeGear(direction: "up")
buick.currentGear
buick.changeGear(direction: "up")
buick.currentGear
buick.changeGear(direction: "down")
buick.currentGear

// Day 12 - Classes, inheritance, and checkpoint 7

// Checkpoint 7

class Animal {
    let numberOfLegs = 4
}

class Dog: Animal {
    func speak() {
        print("Woof woof!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    func speak() {
        print("Meow!")
    }
    
    init(isTame: Bool) {
        self.isTame = isTame
    }
}

class Corgi: Dog {
    override func speak() {
        print("Yap yap!")
    }
}

let corgi = Corgi()
corgi.numberOfLegs
corgi.speak()

class Poodle: Dog {
    override func speak() {
        print("Bark bark!")
    }
}

let poodle = Poodle()
poodle.speak()

class Persian: Cat {
    override func speak() {
        print("Purrrrr...")
    }
}

let persian = Persian(isTame: true)
persian.numberOfLegs
persian.speak()

class Lion: Cat {
    override func speak() {
        print("ROAR!")
    }
}

let lion = Lion(isTame: false)
lion.speak()
lion.isTame

