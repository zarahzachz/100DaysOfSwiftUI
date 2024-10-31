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
