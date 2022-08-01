//: [Previous](@previous)

import Foundation
import UIKit
import Combine

final class SomeViewModel {
    @Published var name: String = "Jack" // @Published 는 class에서만 쓸 수 있음
    var age: Int = 20
}

final class Label {
    var text: String = ""
}

let label = Label()
let vm = SomeViewModel()
print("text: \(label.text)")

// 퍼블리셔를 한번 설정해 놓으면?!
vm.$name.assign(to: \.text, on: label) // 퍼블리셔에서 생긴 text를 label에 할당한다.
print("text: \(label.text)")

// 변경1
vm.name = "Jason"
print("text: \(label.text)")

// 변경2
vm.name = "Hoo"
print("text: \(label.text)")

// 퍼블리셔를 한번 설정해 놓으면?!
// -> 이후에 변경이 계속 이루어지더라도 Label은 자동적으로 update된다.
// vm만 변경되어도 label은 자동 업데이트!

//: [Next](@next)
