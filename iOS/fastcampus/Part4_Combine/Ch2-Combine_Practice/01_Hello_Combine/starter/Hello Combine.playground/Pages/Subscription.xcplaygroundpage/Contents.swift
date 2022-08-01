//: [Previous](@previous)

import Foundation
import Combine



let subject = PassthroughSubject<String, Never>() // output type은 String, failure 타입은 없음

// The print() operator prints you all lifecycle events
let subscription = subject
    .print("[Debug]")
    .sink {value in
    print("Subscriber received value: \(value)")
}

subject.send("Hello")
subject.send("Hello again!")
subject.send("Hello for the last time!")
//subject.send(completion: .finished) // 보내는 쪽도 끊을 수 있고
subscription.cancel()               // 받는 쪽(구독자)도 끊을 수 있음
subject.send("Hello ?? :(")

//: [Next](@next)
