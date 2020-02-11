//: [Previous](@previous)

import Foundation


var x = 5
var y = 10

// Write a func that will swap x & y
func exchange(lhs: inout Int, rhs: inout Int) {
    let temp = lhs
    lhs = rhs
    rhs = temp
}

print("before: \(x) and \(y)")
exchange(lhs: &x, rhs: &y)
print("after: \(x) and \(y)")


var a = "Lambda"
var b = "Rocks"

// Generic Swap
func exchange<T>(lhs: inout T, rhs: inout T) {
    let temp = lhs
    lhs = rhs
    rhs = temp
}
print("before: \(a) and \(b)")
exchange(lhs: &a, rhs: &b)
print("after: \(a) and \(b)")



//: [Next](@next)
