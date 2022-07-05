> ## 옵셔널
>
> - 값이 있을수도 있고, 없을수도 있음을 표현

```swift
// Dictionary (Key: Value)
let languageCode = [
    "한국" : "ko",
    "미국" : "en",
    "일본" : "ja",
]

let krCode = languageCode["한국"] // "ko"
let jpCode = languageCode["일본"] // "ja"
let deCode = languageCode["독일"] // nil
```

> ## 클로저
>
> - 이름이 존재하지 않는 함수이다.
> - 함수는 변수나 상수에도 할당할 수 있으며 클로저도 마찬가지이다.

```swift
// 함수
func call(name: String) {
    print("hello, \(name)")
}

call(name: "Jason")
// hello, Jason

// 상수에 함수 할당하고, 해당 상수를 호출 해보기
let callName = call
callName("Aha")
// hello, Aha

// 상수에 클로저 할당하고, 해당 상수 호출 해보기
let helloName = { (name: String) in
    print("hello, \(name)")
}
helloName("Oho")
// hello, Oho
```

> - 클로저의 형태는 함수와 거의 같으며 <code>in</code> 을 통해서 파라미터 및 반환 타입과 실제 클로저 코드를 분리한다.

```swift
// 클로져 형태
{ (name: String) -> Bool in
   // some code

}
```

> - 클로저는 배열, 딕셔너리같은 컬렉션 타입과 함께 <code><strong>filter, map, reduce</strong></code> 메소드 사용시 자주 활용된다.

```swift
// filter
let members = ["Jason", "Greg", "Tiffany"]
let nameHasT = members.filter { name in
    return name.hasPrefix("T")
}
// ["Tiffany"]


// map
let prices = [1000, 2000, 3000]
let doubledPrices = prices.map { price in
    return price * 2
}
// [2000, 4000, 6000]

// reduce
let revenues = [100, 200, 300]
let totalRevenue = revenues.reduce(0) { partialResult, next in
    return partialResult + next
}
// 600
```
