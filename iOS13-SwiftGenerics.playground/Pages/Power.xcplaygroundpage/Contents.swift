//: [Previous](@previous)

import Foundation



//Generic Beuatifucation 

func power(value: Int, exponent: Int) -> Int {
    var result: Int = 1
    
    for _ in 0..<exponent {
        result *= power
    }
    
    return result
}

let result = power(value: 2, exponent: 3)
print(result)



//Generic       Number has to conform to Numeric protocol
// These are Generic Constraints, constraining it to just one type specific
func power<Number: Numeric>(value: Number, exponent: Int) -> Int {
    var result: Number = 1
       
       for _ in 0..<exponent {
           result *= power
       }
       
       return result
    
}




extension Numeric {
    
    func raisedTo(exponent: Int) -> Self {
        var result: Self = 1
          
          for _ in 0..<exponent {
              result *= self
          }
          
          return result
    }
    
//Modify so it has to be mutating
    mutating func raiseTo(exponent: Int) {
        var result: Self = 1
                 
                 for _ in 0..<exponent {
                     result *= self
                 }
        self = result
    }
    
    
    // Uppercase Self refers to the type. Lowercase self is the Value
                  //Self - self
    let myExampleInt: Int = 1
    let myExampleDouble: Double = 2
    
    let myFirstValue = myExampleInt.raisedTo(exponent: 10)
    let mySecondValue = myExampleDouble.raisedTo(exponent: 20)
    
    
    var anotherExample = 3
    anotherExample.raisedTo(exponent: 4)
    print(anotherExample)
    
    
    
}






//: [Next](@next)
