import UIKit

// MARK: Writing Functions
func printHelp() {
    let message = """
    Welcome to My Apps!

    Run this app inside a directory of images and MyApp
    will resize them all into thumbnails
    """
    
    print(message)
}

printHelp()

// MARK: Accepting parameters
func square(number: Int) {
    print(number * number)
}

square(number: 14)

// MARK: Returning values
func squareTwo(number: Int) -> Int {
    return number * number
}

let result = squareTwo(number: 6)
print(result)

// MARK: Parameter labels
func sayHello(to name: String) {
    print("Hallo \(name)")
}

sayHello(to: "Ari Supriatna")

// MARK: Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Ari Supriatna")

// MARK: Default parameters
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("John Doe")
greet("John Doe", nicely: false)

// MARK: Variadic functions
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)

// MARK: Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't used that password")
}

// MARK: inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
