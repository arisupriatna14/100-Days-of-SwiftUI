import UIKit

// MARK: Variable
var str = "Hello, playground"
str = "Hello, SwiftUI"

// MARK: String and Integer
var language = "Swift"
var age = 38
var population = 8_000_000_000
// MARK: Note
// Swift let's you use underscores as thousands separators do make it easier to read.

// MARK: Multi-line strings
// Standard Swift string use double quotes, but you can't include line breaks in there.
var str1 = """
This goes
over multiple
lines
"""
// NOTES: The str1 have line breaks, if you don't want those line breaks to actually be in your string, end each line with a \, like this:
var str2 = """
This goes \
over multiple \
lines
"""

// MARK: Doubles and Booleans
var pi = 3.141
var awesome = true
// Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.

// MARK: String Interpolation
var score = 85
var strOne = "Your score was \(score)"

// MARK: Constants
// The let keywoard creates constants, which are values that can be set once and never again.
let taylor = "Swift"

// MARK: Type Annotations
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

// MARK: SUMMARY
//You’ve made it to the end of the first part of this series, so let’s summarize.
//
//You make variables using var and constants using let. It’s preferable to use constants as often as possible.
//Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
//Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
//String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
//Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
