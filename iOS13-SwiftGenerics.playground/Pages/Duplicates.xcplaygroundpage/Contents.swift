//: [Previous](@previous)

import Foundation





let array = [20, 15, 20, 11, 7, 8, 7, 20]


func removeDuplicates(array: [Int]) -> [Int]{
    var result: [Int] = []
    
    for item in array {
        if !result.contains(item) {
            result.append(item)
        }
        
    }
    
    return result
    
}

//print(removeDuplicates(array: array).sorted())

//Generic

func removeDuplicates<Number: Numeric>(array: [Number]) -> [Number] { //This will only allow numbers, make it conform to Equatable instead
    var result: [Number] = []
      
      for item in array {
          if !result.contains(item) {
              result.append(item)
          }
          
      }
      
      return result
}

print(removeDuplicates(array: array))



//Extension

extension Sequence where Element: Hashable {
    
    func removeDuplicates() -> [Element] {
        let result = Set(self)
        return Array(result)
    }
    
}




//: [Next](@next)
