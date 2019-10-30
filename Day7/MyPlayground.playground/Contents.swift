import UIKit

// MARK: Using closures as parameters when they return values
func travelThree(action: (String) -> String) {
    print("I'm getting ready to go.")
    let desc = action("Japan")
    print(desc)
    print("I'm arrived!")
}

travelThree { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// MARK: Shorthand parameter names
func travelFour(action: (String) -> String) {
    print("I'm getting ready to go.")
    let desc = action("London")
    print(desc)
    print("I'm arrived!")
}

travelFour {
    "I'm going to \($0) in my car.."
}

// MARK: Closures with multiple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let desc = action("US", 70)
    print(desc)
    print("I'm arrived!")
}


travel {
    "I'm going to \($0) at \($1) miles per hour"
}

// MARK: Returning closures from functions
func travelWithReturningClosure() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

travelWithReturningClosure()("London")

// MARK: Capturing values
func travelCapturingValues() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travelCapturingValues()
result("London")
result("London")
result("London")

// MARK: Test
func fix(item: String, payBill: (Int) -> Void) {
    print("I've fixed your \(item)")
    payBill(450)
}

fix(item: "roof") { (bill: Int) in
    print("You want $\(bill) for that? Outrageous!")
}
