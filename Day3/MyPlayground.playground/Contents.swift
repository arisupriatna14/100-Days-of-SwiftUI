import UIKit

// MARK: Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let reminder = 13 % secondScore

// MARK: Operator overloading
let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Doe"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// MARK: Compound assignment operators
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// MARK: Comparison operators
firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"Taylor" <= "Swift"

// MARK: Conditions
let firstCard = 11
let secondCard = 11

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// MARK: Combining Conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("On of them is over 18")
}

// MARK: The ternary operator
print(firstCard == secondCard ? "Card are the same" : "Card are different")

// MARK: Switch statements
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day")
}

// MARK: Range operators
let scoreExam = 60

switch scoreExam {
case 1..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

