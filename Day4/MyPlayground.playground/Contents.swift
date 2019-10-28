import UIKit

// MARK: For Loops
let count = 1...10

for number in count {
    print("Number = \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("Play")
}

// MARK: While Loops

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// MARK: Repeat Loops
var numberOne = 1
repeat {
    print(numberOne)
    numberOne += 1
} while numberOne <= 20

print("Ready or not, here I come!")

//while false {
//    print("This is false")
//}

repeat {
    print("This is false")
} while false

// MARK: Exiting Loops
var countDown = 10

//while countDown >= 0 {
//    print(countDown)
//    countDown -= 1
//}

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    
    countDown -= 1
}

print("Blast off!")

// MARK: Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bulseye!")
            break outerLoop
        }
    }
}
