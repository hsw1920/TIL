import UIKit

//var greeting = "Hello, playground"
//
//var num = 5
//num =1 // 값을 수정 가능함

//var name = "Jason"
//name = "Jay"
//
//let quote = "I'm mother father genius, Man"
//
//let num = 5
//
//let otherNum = num+2
////7
//
//let halfOfNum = otherNum / 2
////3
//
////3의 배수인지 확인하는 메소드
//print(num.isMultiple(of: 3))
//
////0~300 사이중 랜덤으로 수를 뽑아내는 메소드
//let random = Int.random(in: 0...300)
//
//let score = 3.6

//let isMan = true
//let isHuman = false
//
//var isSingle = true
//isSingle.toggle()
//isSingle // false

//let difficulty = "쉽다"
//let maximumAge = 80
//
//let message = "\(maximumAge) 할머니도 배우는 iOS 개발은 \(difficulty)"
//// "80 할머니도 배우는 iOS 개발은 쉽다"
//
//// Array
//let ages = [3, 20, 60]
//let colors = ["green", "red", "yellow"]
//let color = colors[0]
//
//// Dictionary (Key : Value)
//let languageCode = [
//    "한국" : "ko",
//    "미국" : "en",
//    "일본" : "ja",
//]
//let code = languageCode["한국"] // "ko"

//var emptyArr: [Int] = []
//var emptyDic: [String: Any] = [:]
//var Arr: [Int] = [1,2]
//var Dic: [String: Any] = ["d":1,"31":"1"]

//enum WeekDay {
//    case mon
//    case tue
//    case wed
//    case thu
//    case fri
//}
//
//var today: WeekDay = .mon
//var tod: String = "mon" // enum을 쓰는 이유?? => 에러를 줄일 수 있는 방법
//// 명시적으로 enum을 정하여서 mon을 mom으로 잘못 쓸 경우에 에러를 보여주므로
//// 실수를 줄일 수 있음

//enum MediaType {
//    case audio(String)
//    case video(String)
//}
//
//var mp3: MediaType = .audio("mp3")
//var h264: MediaType = .video("h264")

//let age = 30
//
//if age > 20 {
//    print("성인입니다.")
//} else {
//    print("미성년입니다.")
//}
//
//if age >= 10 && age < 20 {
//    print("10대 입니다.")
//} else if (age >= 20 && age < 30) {
//    print("20대 입니다.")
//} else if (age >= 30 && age < 40) {
//    print("30대 입니다.")
//} else if (age >= 40 && age < 50) {
//    print("40대 입니다.")
//} else {
//    print(".....")
//}

//enum Weather {
//    case sun
//    case cloud
//    case rain
//}
//
//var weather: Weather = .rain
//
//switch weather {
//case .sun:
//    print("맑아요")
//case .cloud:
//    print("흐려요")
//case .rain:
//    print("비와요")
//}

//let ages = [3,20,60]
//let languageCode = [
//    "한국" : "ko",
//    "미국" : "en",
//    "일본" : "ja",
//]
//
//for age in ages {
//    print("age: \(age)")
//}
//
//for (key, value) in languageCode {
//    print("\(key)의 언어코드는 \(value)입니다")
//}
//
//for i in 0..<10 {
//    print("나는 iOS 개발자다! \(i+1)번째")
//}

//var count = 10
//
//print("Ready!")
//
//while count > 0  {
//    print("\(count)...")
//    count -= 1
//}
//
//print("START!")

//let languageCode = [
//    "한국" : "ko",
//    "미국" : "en",
//    "일본" : "ja",
//]
//let krCode = languageCode["한국"] // "ko"
//let jpCode = languageCode["일본"] // "ja"
//let deCode = languageCode["독일"] // nil
//
////이름이 있을수도 있고 없을 수도 있는 타입 선언 => String?
//var name: String? = nil
//name = "Jason"
//name = nil

//func printGugu(dan: Int) {
//    for i in 1...9 {
//        print("\(dan) * \(i) = \(dan*i)")
//    }
//}
//printGugu(dan: 5)
////5 * 1 = 5
////5 * 2 = 10
////5 * 3 = 15
////5 * 4 = 20
////5 * 5 = 25
////5 * 6 = 30
////5 * 7 = 35
////5 * 8 = 40
////5 * 9 = 45
//
//
//func rollDice() -> Int {
//    return Int.random(in: 1...6)
//}
//let random = rollDice()

//// 함수
//func call(name: String) {
//    print("hello, \(name)")
//}
//
//call(name: "Jason")
//// hello, Jason
//
////상수에 함수를 할당할 수 있다.
//let callName = call
//callName("Aha")
////hello, Aha
//
//// 상수에 클로저를 할당하고 해당 상수를 호출함
//// 클로저는 필수!!!!!!!!
//let helloName = { (name: String) in
//    print("hello, \(name)")
//}
//helloName("Oho")
////hello, Oho
//
//let members = ["Jason", "Greg", "Tiffany"]
//let nameHash = members.filter{ name in
//    return name.hasPrefix("T")
//}
//// ["Tiffany"]
//
////map => 변환시킬 때 사용된다
//let prices = [1000,2000,3000]
//let doubledPrices = prices.map { price in
//    return price * 2
//}
//doubledPrices
//
////reduce
//let revenues = [100,200,300]
//let totalRevenue = revenues.reduce(0) {
//    partialResult, next in
//    return partialResult + next
//}

// 구조체, 클래스
// 구조체 -> 사용자가 원하는 데이터타입을 만들 때 사용한다.

//struct Album {
//    let title: String
//    let artist: String
//    var isReleased = false
//
//    func description() -> String {
//        return "\(title) by \(artist)"
//    }
//
//    //구조체 내부 멤버 변수의 값을 변경하는 경우에 mutating 키워드를 사용함
//    mutating func release(){
//        self.isReleased = true
//    }
//}
//
//var easyOnMe = Album(title: "Easy On Me", artist: "Adele")
//print(easyOnMe.description())
//// Easy On Me by Adele
//
//print(easyOnMe.isReleased)
//easyOnMe.release() // mutating을 이용하여 구조체 내부 값 변경
//print(easyOnMe.isReleased)
//
//// 클래스도 사용자가 원하는 데이터타입을 만들 때 사용하며 구조체와 몇가지 다른점 존재
//// 클래스는 상속이 가능하며 구조체는 상속이 불가능하다
//// 클래스는 참조하고 구조체는 복사한다.
//// 클래스는 멤버와이즈 이니셜라이저(생성자)를 기본으로 안만들어준다
//// <<생성자>>
////init(title: String, artist: String){
////    self.title = title
////    self.artist = artist
////}
//
//class Employee {
//    var name: String
//    var hours: Int
//    init(name: String, hours: Int){
//        self.name = name
//        self.hours = hours
//    }
//    func work() {
//        print("I'm working now...")
//    }
//    func summary() {
//        print("I work \(self.hours) hours a day.")
//    }
//}
//
//class iOSDeveloper: Employee {
//    override func work() {
//        print("I'm developing iOS app now.")
//    }
//    override func summary() {
//        print("I work \(self.hours/2) hours a day.")
//    }
//}
//
//struct Phone {
//    var modelName: String
//    var manufacturer: String
//    var version: Double = 1.0
//}
//
//let normalWorker = Employee(name: "Kim", hours: 8)
//normalWorker.work()
//normalWorker.summary()
////I'm working now...
////I work 8 hours a day.
//
//let developer = iOSDeveloper(name: "Jason", hours: 8)
//developer.work()
//developer.summary()
////I'm developing iOS app now.
////I work 4 hours a day.
//
//// Reference vs. Copy
//var iPhone1 = Phone(modelName: "iPhone13", manufacturer: "Apple")
//var iPhone2 = iPhone1
//iPhone2.modelName = "iPhone14"
//print(iPhone2.modelName)
//print(iPhone1.modelName)
////iPhone14
////iPhone13
//
////구조체와 달리 복사하는 방식이 아니라 포인터처럼 참조하는 방식임.
//// jr1을 가리키는 jr2의 name은 jr1의 name이 변경되면
//// jr2가 가리키는 name도 변경된다.
//var jrDeveloper1 = iOSDeveloper(name: "John", hours: 8)
//var jrDeveloper2 = jrDeveloper1
//jrDeveloper1.name = "Billy"
//print(jrDeveloper1.name)
//print(jrDeveloper2.name)
////Billy
////Billy


// stored property vs computed property
//stored property는 클래스, 구조체가 값을 저장하고있는 프로퍼티임
//computed property는 따로 값을 저장하지 않고 기존의 stored property를
// 활용하거나 특정값을 전달할 때 사용하는 프로퍼티임

//struct Watch {
//    //stored
//    let model: String
//    let manufacturer: String
//
//    //computed
//    var description: String {
//        return "\(model) by \(manufacturer)"
//    }
//}
//
//struct Person {
//    //stored
//    let firstName: String
//    let lastName: String
//
//    //computed
//    var fullName: String {
//        return "\(firstName) \(lastName)"
//    }
//}
//
//let appleWatch = Watch(model: "Watch 7", manufacturer:  "Apple")
//print(appleWatch.description)
//// Watch 7 by Apple
//
//let jason = Person(firstName: "Jason", lastName: "Lee")
//print(jason.fullName)
//// Jason Lee


//프로토콜
//프로토콜은 제공하고 싶은 역할(기능, 속성)을 미리 정의해 놓은것을 말한다.
// 이후에 다른 타입이 해당 프로토콜의 역할을 제공하고 싶으면, conform해서 제공함

//protocol Coach {
//    var name: String {get set}
//    var currentTeam: String {get}
//    func training()
//    func direct()
//}
//
//struct Mourinho: Coach {
//    var name: String = "Jose Mourinho"
//    var currentTeam: String = "AS Roma"
//
//    func training() {
//        print("Training Player")
//    }
//    func direct() {
//        print("Direct Game")
//    }
//}
//
//let mourinho = Mourinho()
//print("\(mourinho.name), \( mourinho.currentTeam)")
//mourinho.training()
//mourinho.direct()
//
////    Jose Mourinho, AS Roma
////    Traing Player
////    Direct Game


//// 익스텐션
//// 기존 타입에 새로운 역할을 추가하고 싶을 때 사용
//
//extension String {
//    func contains(s:String) -> Bool {
//        return self.range(of: s) != nil
//    }
//    func replace(target: String, with: String) -> String {
//        return self.replacingOccurrences(of: target, with: with)
//    }
//}
//
//let testString = "Hello iOS Developer!!"
//let replaced = testString.replace(target: "Hello", with: "안녕하세요")
//print(replaced)
//print(testString.contains(s: "iOS"))
////안녕하세요 iOS Developer!!
////true



