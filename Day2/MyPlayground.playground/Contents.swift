import UIKit

// MARK: Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

// MARK: Arrays with Type Annotations
let number: [Int] = [1, 12, 3, 4, 5]
let names: [String] = ["Ari", "Faishal", "John", "Doe"]

// MARK: Sets
// Notes: All items must be unique and unordered
let colors = Set(["red", "blue", "green"])
let colors2 = Set(["red", "green", "green", "blue", "red"])

// MARK: Tuples
var name = (first: "Taylor", last: "Swift")
name.first
name.last
name.0
name.1

// MARK: Arrays vs Sets vs Tuples
// If you need a spesific, fixed collection, you should use a tuple
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// If you need a collection of values that must be unique, you should use a Set
let set = Set(["aardvark", "astronaut", "azalea", "astronaut"])

// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// MARK: Dictionaries
let heights = ["Taylor Swift": 1.78, "Ed Sheeran": 1.73]
heights["Taylor Swift"]

// MARK: Dictionary with Type Annotations
let weights: [String: Double] = ["Taylor Swift": 45.5, "Ed Sheeran": 43.2]

// MARK: Dictionary default values
let favoriteIceCream = ["Paul": "Chocolate", "Sophie": "Vanilla"]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte", default: "Unknown"]

// MARK: Create empty collections
// Create an empty dictionary with Strings for keys and values
var teams = [String: String]()
teams["Paul"] = "Red"

// Create an empty arrays to store integers
var results = [Int]()
results.append(1)
results.append(2)

var results2 = Array<Int>()
results2.count

// Create an empty Set
var words = Set<String>()
var numbers = Set<Int>()

// Create an empty Dictionary
var scores = Dictionary<String, Int>()
scores["John"] = 3
scores["Taylor"] = 4
scores.count

// MARK: Enumerations
enum Result {
    case success
    case failure
}

let failure = Result.failure
let success = Result.success

// MARK: Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// MARK: Enum raw values
enum Planet: Int {
    case mercury = 1 // Specific value
    case venus
    case earth
    case mars
}

let getEarth = Planet(rawValue: 2)
let earthIndex = Planet.earth.rawValue
