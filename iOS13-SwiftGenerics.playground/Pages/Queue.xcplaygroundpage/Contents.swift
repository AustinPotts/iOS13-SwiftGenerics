//: [Previous](@previous)

import Foundation



struct NumberQueue {
    private(set) var items: [Int]
    
    mutating func push(_ item: Int) {
           items.append(item)
       }
    
    //Mutating = modify the property of a struct, this is needed for struct not class
       mutating func pop() -> Int? {
        guard items.isEmpty == false else {return nil}
           return items.removeFirst()
       }
    
    //Not all functions have to be mutating. we arent modifying elemnts here
    func peak() -> Int?{
        return items.first
    }
}

var deliNumber = NumberQueue(items: [55, 56, 57])

print(deliNumber.items)
deliNumber.push(58)
print(deliNumber.items)


// Generics
struct Queue<Item> {
    private var items: [Item]
       
       mutating func push(_ item: Item) {
              items.append(item)
          }
       
       //Mutating = modify the property of a struct, this is needed for struct not class
          mutating func pop() -> Item? {
           guard items.isEmpty == false else {return nil}
              return items.removeFirst()
          }
    
    func peak() -> Item?{
           return items.first
       }
}





//: [Next](@next)
