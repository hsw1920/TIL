//
//  main.swift
//  yagom_swift
//
//  Created by 홍승완 on 2022/05/26.
//


import Swift

// 02. 명명법 콘솔로그 문자열 보간법

//let age:Int = 10
//
//print("안녕하세요 저는 \(age)살 입니다.")
//print("안녕하세요 저는 \(age+5)살 입니다.")
//
//class Person {
//    var name:String = "yagom"
//    var age : Int = 10
//}
//
//let yagom:Person = Person()
//
//print(yagom)
//dump(yagom)
//


//// 03. 상수와 변수

//// 상수 선언 키워드 let
//// 변수 선언 키워드 var
//
//// 상수의 선언
//// let 이름 : 타입 = 값
//
//// 변수의 선언
//// var 이름 : 타입 = 값
//
//// 값의 타입이 명확하다면 타입은 생략간으
//// let 이름 = 값
//// var 이름 = 값
//
//let constant : String = "차후에 변경이 불가능한 상수 let"
//var variable : String = "차후에 변경이 가능한 변수 var"
//
//variable = "변수는 이렇게 차후에 다른 값을 할당할 수 있지만"
////constant = "상수는 차후에 값을 변경할 수 없습니다. // 오류 발생
//
//// 상수 선언 후에 나중에 값 할당하기
//
//// 나중에 할당하려고 하는 상수나 변수는 타입을 꼭 명시해주어야 합니다.
//let sum:Int
//let inputA: Int = 100
//let inputB: Int = 200
//
//// 선언 후 첫 할당
//sum = inputA + inputB
//// sum = 1 // 그 이후에는 다시 값을 바꿀 수 없습니다, 오류발생
//
////변수도 물론 차후에 할당하는 것이 가능합니다.
//var nickname : String
//nickname = "yagom"
//// 변수는 차후에 다시 다른 값을 할당해도 문제가 없다.
//nickname = "야곰"
//


//// 04. 기본 데이터 타입
///
//// Swift의 기본 데이터 타입
//// Bool, Int, UInt, Float, Double, Character, String
//
//// Bool
//var someBool:Bool = true
//// someBool = 0  // 에러!
//// someBool = 1  // 에러!
//
//// Int
//var someInt :Int = 1
//
//// UInt
//var someUInt : UInt = 100
////someUInt = someInt // 에러
//
//// Float
//var someFloat: Float = 3.14
//someFloat=3
//
//// Double
//var someDouble : Double = 3.14
//someDouble = 3
////someDouble = someFloat // 에러
//
//// Character // 한 글자, 한 문자, 유니코드를 사용함
//var someCharacter : Character = "😍"
//someCharacter = "😍"
//someCharacter = "A"
//someCharacter = "a"
//someCharacter = "가"
////someCharacter = "가나다" // 에러
////print(someCharacter)
//
//// String
//var someString: String = "하하하 😍 "
//someString = someString + "웃으면 복이와요"
//print(someString)

//// 05. Any, AnyObject, nil

///*
// Any - Swift의 모든 타입을 지칭하는 키워드
// AnyObject - 모든 클래스 타입을 지칭하는 프로토콜
// nul - 없음을 나타내는 키워드
// */
//
//// MARK: - Any
//var someAny: Any = 100
//someAny = "어떤타입도 수용 가능합니다"
//someAny = 123.12
//
////let someDouble:Double = someAny
//
////MARK: - AnyObject
//
//class SomeClass {}
//var someAnyObject : AnyObject = SomeClass()
////someAnyObject = 123.12
//
////MARK: - nil
////someAny = nil  // (== null, NULL, none)
////someAnyObject = nil
//


//// 06. 컬렙션 타입 (Array, Dictionary, Set)
//
///*
// Array - 순서가 있는 리스트 컬렉션 (리스트)
// Dictionary - 키와 값의 쌍으로 이루어진 컬렉션 (키,벨류), 해시맵과 비슷함
// Set - 순서가 없고, 멤버가 유일한 컬렉션 (집합안의 한 요소들을 생각해보면 됨 (유일!))
// */
//
////MARK: - Array
////빈 Int Array 생성
//var integers : Array<Int> = Array<Int>()
//integers.append(1)
//integers.append(100)
////integers.append(101.1)
//
//integers.contains(100)
//integers.contains(199)
//
//integers.remove(at:0)
//integers.removeLast()
//integers.removeAll()
//
//integers.count
//
//// integers[0] // 모두 지웠기 때문에 에러남
//
//// Array<Double>와 [Double]는 동일한 표현
//// 빈 Double Array 생성
//var doubles: Array<Double> = [Double]()
//
//// 빈 String Array 생성
//var strings: [String] = [String]()
//
//// 빈 Character Array 생성
//// []는 새로운 빈 Array
//var characters : [Character] = []
//
//// let을 사용하여 Array를 선언하면 불변 Array
//let immutableArray = [1,2,3]
//
////immutableArray.append(4)
////immutableArray.removeAll()
//
////MARK: - Dictionary
//
////Key가 String 타입이고 Value가 Any인 빈 Dictionary 생성
//var anyDictionary : Dictionary<String, Any> = [String:Any]()
//anyDictionary["someKey"] = "value"
//anyDictionary["anotherKey"] = 100
//
//print(anyDictionary)
//
//anyDictionary["someKey"]="dictionary"
//print(anyDictionary)
//
//anyDictionary.removeValue(forKey: "anotherKey")
//
//anyDictionary["someKey"] = nil
//print(anyDictionary)
//
//let emptyDictionary : [String:Any] = [:]
//let initializedDictionary: [String:String] = ["name":"yagom", "gender":"male"]
//
//// emptyDictionary["key"]="value" // let으로 선언했기 때문에
//
//// let someValue : String = initializedDictionary["name"]
//
////MARK - Set
//
//// 빈 Int Set 생성
//var integerSet : Set<Int> = Set<Int>()
//integerSet.insert(1)
//integerSet.insert(100)
//integerSet.insert(99)
//integerSet.insert(99)
//integerSet.insert(99)
//print(integerSet)
//
//print(integerSet.contains(1))
//print(integerSet.contains(2))
//
//integerSet.remove(100)
//integerSet.removeFirst()
//
//print(integerSet.count)
//
//
//let setA : Set<Int> = [1,2,3,4,5]
//let setB : Set<Int> = [3,4,5,6,7]
//
//let union : Set<Int> = setA.union(setB)
//
//let sortedUnion:[Int] = union.sorted()
//
//let intersection: Set<Int> = setA.intersection(setB) // 교집합
//let subtracting : Set<Int> = setA.subtracting(setB) // 차집합




//// 07. 함수

////MARK: - 함수의 선언
//
////MARK: 함수선언의 기본형태
////func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입, 매개변수3이름: 매개변수3타입...) -> 반환타입 {
////    함수구현부
////    return 반환값
////}
//
//func sum(a:Int, b:Int)->Int{
//    return a+b
//}
//
////MARK: 반환 값이 없는 함수
////func 함수이름 (매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입, 매개변수3이름: 매개변수3타입...) -> Void {
////    함수구현부
////    return
////}
//
//func printMyName(name: String) -> Void {
//    print(name)
//}
//
////func 함수이름 (매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입, 매개변수3이름: 매개변수3타입...) {
////    함수구현부
////    return
////}
//
//func printYourName(name: String) {
//    print(name)
//}
//
////MARK: 매개변수가 없는 함수
////func 함수이름() -> 반환타입 {
////    함수 구현부
////    return 반환값
////}
//
//func maximumIntegerValue() -> Int {
//    return Int.max
//}
//
////MARK: 매개변수와 반환값이 업는 함수
////func 함수이름() -> Void {
////    함수 구현부
////    return
////}
//
//func hello() -> Void {print("hello")}
//
////func 함수이름() {
////    함수구현부
////    return
////}
//
//func bye(){print("bye")}
//
////MARK: - 함수의 호출
//
//sum(a:3, b:5) //8
//printMyName(name: "yagom") // yagom
//printYourName(name: "haha") // haha
//maximumIntegerValue() // Int의 최댓값
//hello() // hello
//bye() // bye
//



//// 08. 함수 고급

////MARK: - 매개변수 기본값
//
////기본값을 갖는 매개변수는 매개변수 목록 중에 뒤쪽에 위치하는 것이 좋다
////func 함수이름 (매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
////    함수 구현부
////    return 반환값
////}
//
//func greeting(friend: String, me: String = "yagom") {
//    print("Hello \(friend)! I'm \(me)")
//}
//
//// 매개변수 기본값을 가지는 매개변수는 생략할 수 있습니다.
//greeting(friend: "haha") // Hello haha! I'm yagom
//greeting(friend: "john", me: "eric") // Hello john! I'm eric
//
////MARK: - 전달인자 레이블
//
////전달인자 레이블은 함수를 호출할 때
////매개변수의 역할을 좀 더 명확하게 하거나
////함수 사용자의 입장에서 표현하고자 할 때 사용합니다.
////func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
////    함수 구현부
////    return
////}
//
////함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다.
//func greeting(to friend: String, from me: String){
//    print("Hello! \(friend)! I'm \(me)")
//}
//
////함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다.
//greeting(to: "haha", from: "yagom") // Hello haha! I'm yagom
//
//
////MARK: - 가변 매개변수
//
////전달받을 값의 개수를 알기 어려울 때 사용할 수 있습니다.
////가변 매개변수는 함수당 하나만 가질 수 있습니다.
//
////func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입... ) -> 반환타입 {
////    함수 구현부
////    return
////}
//
//func sayHelloToFriends(me: String, friends: String...) -> String {
//    return "Hello \(friends)! I'm \(me)"
//}
//print(sayHelloToFriends(me: "yagom", friends: "haha", "eric", "wing"))
//print(sayHelloToFriends(me: "yagom"))
//
///*
// 위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능합니다.
// */
//
////MARK: - 데이터 타입으로서의 함수
//
////스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어입니다
////스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능하고
////매개변수를 통해 전달할 수도 있습니다.
//
////MARK: 함수의 타입표현
//// 반환타입을 생략할 수 없습니다
//// (매개변수1타입, 매개변수2타입 ...) -> 반환타입
//
//var someFunction: (String, String) -> Void = greeting(to:from:)
//someFunction("eric", "yagom") // Hello eric! I'm yagom
//
//someFunction = greeting(friend:me:)
//someFunction("eric", "yagom") // Hello eric! I'm yagom
//
//// 타입이 다른 함수는 할당할 수 없습니다.
////someFunction = sayHelloToFriends(me:friends:)
//
//func runAnother(function : (String, String) -> Void) {
//    function("jenny", "mike")
//}
//
//// Hello jenny! I'm mike
//runAnother(function: greeting(friend:me:))
//
//// Hello jenny! I'm mike
//runAnother(function: someFunction)



//// 09. 조건문

//let someInteger = 100
//
////MARK: - if-else
////if <#condition#> {
////    <#statements#>
////} else if <#condition#> {
////    <#statements#>
////} else {
////    <#statements#>
////}
//if someInteger < 100 {
//    print("100 미만")
//} else if someInteger > 100 {
//    print("100 초과")
//} else {
//    print("100")
//} // 100
//// 스위프트의 조건에는 항상 Bool 타입이 들어와야합니다
//// someInteger는 Bool 타입이 아닌 Int 타입이기 때문에
//// 컴파일 오류가 발생합니다
////if someInteger { }
//
////MARK: - switch
////switch <#value#> {
////case <#pattern#>:
////    <#code#>
////default:
////    <#code#>
////}
//
//// 범위 연산자를 활용하면 더욱 쉽고 유용합니다
//switch someInteger {
//case 0:
//    print("zero")
//case 1..<100: // 1이상 100미만
//    print("1~99")
//case 100:
//    print("100")
//case 101...Int.max: // 101이상 Int.max이하
//    print("over 100")
//default:
//    print("unknown")
//} // 100
//
//// 정수 외의 대부분의 기본 타입을 사용할 수 있습니다
//switch "yagom" {
//case "jake":
//    print("jake")
//case "mina":
//    print("mina")
//case "yagom":
//    print("yagom!!")
//default:
//    print("unknown")
//} // yagom!!


//// 10. 반복문

//var integers = [1, 2, 3]
//let people = ["yagom": 10, "eric": 15, "mike": 12]
//
////MARK: - for-in
////for <#item#> in <#items#> {
////    <#code#>
////}
//for integer in integers {
//    print(integer)
//}
//
//// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
//for (name, age) in people {
//    print("\(name): \(age)")
//}
//
//
//
////MARK: - while
////while <#condition#> {
////    <#code#>
////}
//while integers.count > 1 {
//    integers.removeLast()
//}
//
//
////MARK: - repeat-while   --> do-while 과 동일
////repeat {
////    <#code#>
////} while <#condition#>
//repeat {
//    integers.removeLast()
//} while integers.count > 0


//// 11. 옵셔널

////MARK:- 암시적 추출 옵셔널
//// Implicitly Unwrapped Optional
//var implicitlyUnwrappedOptionalValue: Int! = 100
//
//switch implicitlyUnwrappedOptionalValue {
//case .none:
//    print("This Optional variable is nil")
//case .some(let value):
//    print("Value is \(value)")
//}
//
//// 기존 변수처럼 사용 가능
//implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1
//
//// nil 할당 가능
//implicitlyUnwrappedOptionalValue = nil
//
//// 잘못된 접근으로 인한 런타임 오류 발생
////implicitlyUnwrappedOptionalValue = implicitlyUnwrappedOptionalValue + 1
//
////MARK:- 옵셔널
//// Optional
//var optionalValue: Int? = 100
//
//switch optionalValue {
//case .none:
//    print("This Optional variable is nil")
//case .some(let value):
//    print("Value is \(value)")
//}
//
//// nil 할당 가능
//optionalValue = nil
//
//// 기존 변수처럼 사용불가 - 옵셔널과 일반 값은 다른 타입이므로 연산불가
////optionalValue = optionalValue + 1
//
//optionalValue = 150
//print(optionalValue)
//print(optionalValue!)


//// 11. 옵셔널 추출

////MARK:- Optional Binding
//func printName(_ name: String) {
//    print(name)
//}
//
//var myName: String? = nil
//
////printName(myName)
//// 전달되는 값의 타입이 다르기 때문에 컴파일 오류발생
//if let name: String = myName {
//    printName(name)
//} else {
//    print("myName == nil")
//}
//
//
//var yourName: String! = nil
//
//if let name: String = yourName {
//    printName(name)
//} else {
//    print("yourName == nil")
//}
//
//// name 상수는 if-let 구문 내에서만 사용가능합니다
//// 상수 사용범위를 벗어났기 때문에 컴파일 오류 발생
////printName(name)
//// ,를 사용해 한 번에 여러 옵셔널을 바인딩 할 수 있습니다
//// 모든 옵셔널에 값이 있을 때만 동작합니다
//myName = "yagom"
//yourName = nil
//
//if let name = myName, let friend = yourName {
//    print("\(name) and \(friend)")
//}
//// yourName이 nil이기 때문에 실행되지 않습니다
//yourName = "hana"
//
//if let name = myName, let friend = yourName {
//    print("\(name) and \(friend)")
//}
//// yagom and hana
//
////MARK:- Force Unwrapping
//printName(myName!) // yagom
//myName = nil
//
////print(myName!)
//// 강제추출시 값이 없으므로 런타임 오류 발생
//yourName = nil
//
////printName(yourName)
//// nil 값이 전달되기 때문에 런타임 오류발생
