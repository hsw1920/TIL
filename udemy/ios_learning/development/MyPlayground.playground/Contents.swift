func exercise1() {
    let numbers = [45, 73, 195, 53]
    var computedNumbers = numbers
    for i in 0...3{
        computedNumbers[i] = numbers[i]*numbers[(i+1)%4]
    }
    print(computedNumbers)
}

func exercise2() {
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    //The number of letters in alphabet equals 26
    var password : String = ""
    for _ in 1...6{
        password+=alphabet.randomElement()!
    }
    print(password)
}

//exercise1()
exercise2()

