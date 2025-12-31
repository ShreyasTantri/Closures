import Foundation

// Closures
let define = {
    print("Closure is a block of code")
    return 5
}
print(define())
// ************************************************************

// Ways of defining closures
// 1.
let addition: (Int, Int) -> Int = { a, b in
    return a + b
}
print(addition(4, 6))

//2.
let multiply = { (a: Int, b: Int) -> Int in
    a * b
}
print(multiply(4, 6))

//3.
let divide: (Double, Double) -> Double = { a, b in
    a / b
}
print(divide(4, 6))

//4.
let subtract: (Int, Int) -> Int = { $0 - $1 }
print(subtract(4, 6))
// ************************************************************

// Closures as:
// I. Value
let describe = { (message: String) -> Void in
    print("Hi, Good Morning. \(message)")
}

describe("I am off to work today")

// II. Parameter
//1.
func offWork(action: () -> Void) {
    action()
}

offWork {
    print("Absent")
}

//2.
func perform(message: String, action: () -> Void) {
    print(message)
    action()
}

perform(message: "How are you") {
    print("Shreyas")
}

//3.
func doWork() -> () -> String {
    
    {
         "I'm back to work"
    }
}

let result = doWork()
result()

// III. Return value
func makeMultiplier(_ factor: Int) -> (Int) -> Int {

    {
        value in value * factor
    }
}

let multiplierOfFive = makeMultiplier(5)
print(multiplierOfFive(7))
// ************************************************************

// Use of closures in HOF
let numbers = [2, 5, 22, 6, 7]
numbers.sorted { a, b in
    a > b
}

let even = numbers.filter { $0 % 2 == 0 }
let doubled = numbers.map { $0 * 2 }
// ************************************************************

// Escaping closures - @escaping
// Non-escaping
func perform(closure: () -> Void) {
    closure()
}

perform {
    print("Do the work right now")
}

// Escaping
func performLater(closure: @escaping () -> Void) {
    // code...
    // code...
    // code...
    // code...
        closure()
}

performLater {
    print("Do the work after I leave and update me later")
}
