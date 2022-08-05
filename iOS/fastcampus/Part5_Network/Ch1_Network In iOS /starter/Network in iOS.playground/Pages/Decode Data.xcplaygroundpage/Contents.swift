//: [Previous](@previous)

import Foundation

// Codable : protocol의 종류로 Encodable과 Decodable을 합쳐놓은것
struct GithubProfile: Codable {
    let login: String
    let avatarUrl: String
    let htmlUrl: String
    let followers: Int
    let following: Int
    
    enum CodingKeys: String, CodingKey {
        case login
        
        // swift에선 카멜케이스(strStr), JSON에서는 스네이크케이스(str_str)로 쓰기때문에 매핑을 도와줌
        case avatarUrl = "avatar_url"
        case htmlUrl = "html_url"
        
        case followers
        case following
    }
}

// App Model -> JSON :(인코딩)
// App Model <- JSON :(디코딩)


let configuration = URLSessionConfiguration.default
let session = URLSession(configuration: configuration)

let url = URL(string: "http://api.github.com/users/cafielo")!

let task = session.dataTask(with: url) { data, response, error in
    guard let httpResponse = response as? HTTPURLResponse,
          (200..<300).contains(httpResponse.statusCode) else {
        print("--> response \(response)")
        return
    }
    
    guard let data = data else { return }
    
//    let result = String(data: data, encoding: .utf8)
//    print(result)
    // data를 String이 아니라
    // data -> GithubProfile로 만들고싶음
    
    do {
        // decoder를 설정하고
        let decoder = JSONDecoder()
        // decode를 실패할 수 있으므로 try로 실행
        let profile = try decoder.decode(GithubProfile.self, from: data)
        print("profile: \(profile)")
    } catch let error as NSError { // 성공하지 못했을 경우도 catch 설정 : error 일때
        print("error: \(error)")
    }
}

task.resume()





//: [Next](@next)
