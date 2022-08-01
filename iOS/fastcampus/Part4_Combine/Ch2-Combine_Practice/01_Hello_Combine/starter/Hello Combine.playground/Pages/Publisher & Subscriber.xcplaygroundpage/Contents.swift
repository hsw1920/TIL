//: [Previous](@previous)

import Foundation
import Combine

// Publisher & Subscriber

let just = Just(1000) // data 1000 하나만
let subscription1 = just.sink { value in
    print("Received Value: \(value)")
}

let arrayPublisher = [1,3,5,7,9].publisher // 여러 data를 퍼블리싱
let subscription2 = arrayPublisher.sink { value in
    print("Received Value: \(value)")
}


class MyClass {
    var property: Int = 0 {
        didSet {
            print("Did set property to \(property)")
        }
    }
}

let object = MyClass()
let subscription3 = arrayPublisher.assign(to: \.property, on: object)
print("Final Value: \(object.property)")

//object.property = 3



//: [Next](@next)


