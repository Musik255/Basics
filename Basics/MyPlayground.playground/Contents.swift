import UIKit

var greeting = "Hello, playground"


//: Константы и переменные

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

var red, green, blue: Double


//: Интерполяция строк
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"
print("The current value of friendlyWelcome is \(friendlyWelcome)")


//: Типы данных
let minValue = UInt8.min
let maxValue = UInt8.max

print(minValue, maxValue)

let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11

print(binaryInteger)


let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0
print(hexadecimalDouble)

//: Перевод типов данных
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

//: Кортежи
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"
let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"
print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"
let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"

//: Optionals

var serverResponceCode: Int? = 404
serverResponceCode = nil

///Forced unwrapping
if serverResponceCode != nil{
    print(serverResponceCode!)
}
///optional binding
if let serverResponceCode = serverResponceCode{
    print(serverResponceCode)
}

///implicitly unwrapped optional !
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

//: Обработка ошибок
func canThrowAnError() throws {
    // this function may or may not throw an error
}

do {
    try canThrowAnError()
    // no error was thrown
} catch {
    // an error was thrown
}
