import UIKit

// MARK: Create basic closures
let driving = {
    print("I'm driving in my car")
}

driving()

// MARK: Accepting parameters in a closure
let drivingWithParameters = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingWithParameters("London")

// MARK: Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Singapore")
print(message)

// MARK: Closures as parameters
let drivingTwo = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I'm arrived!")
}

travel(action: drivingTwo)

// MARK: Trailing closure syntax
func travelTwo(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I'm arrived!")
}

//travelTwo() {
//    print("I'm driving in my car!!")
//}

travelTwo { (place: String) in
    print("I'm going to \(place) in my car!!")
}

travelTwo {
    print("I'm goint to \($0) in my motorcycle!")
}
