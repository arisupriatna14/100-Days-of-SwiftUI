import UIKit

// MARK: Create your own structs
struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn Tennis"
print(tennis.name)

// MARK: Computed properties
struct SportTwo {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = SportTwo(name: "Chessboxing", isOlympicSport: true)
print(chessBoxing.olympicStatus)

// MARK: Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// MARK: Method
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
let totalPopulation = london.collectTaxes()
print(totalPopulation)

// MARK: Mutating methods
struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ari")
print(person.name)
person.makeAnonymous()
print(person.name)

// MARK: Properties and methods of Strings
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.lowercased())
print(string.sorted())

// MARK: Properties and method of Arrays
var toys = ["Woody"]
print(toys.count)

toys.append("Buzz")
toys.firstIndex(of: "Woody")
print(toys.sorted())

toys.remove(at: 0)
print(toys)
