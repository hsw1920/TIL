//: [Previous](@previous)

import Foundation

enum NetworkError: Error {
  case invalidRequest
  case transportError(Error)
  case responseError(statusCode: Int)
  case noData
  case decodingError(Error)
}

struct GithubProfile: Codable {
    let login: String
    let avatarUrl: String
    let htmlUrl: String
    let followers: Int
    let following: Int
    
    enum CodingKeys: String, CodingKey {
        case login
        case avatarUrl = "avatar_url"
        case htmlUrl = "html_url"
        case followers
        case following
    }
}

final class NetworkService {
    
    let session: URLSession
    init(configuration: URLSessionConfiguration) {
        session = URLSession(configuration: configuration)
    }
    // Result시 성공case에는 GithubProfile, 실패case에는 Error를 넘겨줌
    func fetchProfile(userName: String, completion: @escaping (Result<GithubProfile, Error>) -> Void) {
        let url = URL(string: "http://api.github.com/users/cafielo")!

        let task = session.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(.failure(NetworkError.transportError(error)))
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse,
                  !(200..<300).contains(httpResponse.statusCode) {
                completion(.failure(NetworkError.responseError(statusCode: httpResponse.statusCode)))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
        //    let result = String(data: data, encoding: .utf8)
        //    print(result)
            // data를 String이 아니라
            // data -> GithubProfile로 만들고싶음
            
            do {
                // decoder를 설정하고
                let decoder = JSONDecoder()
                // decode를 실패할 수 있으므로 try로 실행
                let profile = try decoder.decode(GithubProfile.self, from: data)
                //print("profile: \(profile)")
                completion(.success(profile))
            } catch let error as NSError { // 성공하지 못했을 경우도 catch 설정 : error 일때
                //print("error: \(error)")
                completion(.failure(NetworkError.decodingError(error)))
            }
        }

        task.resume()

    }
}

// network 담당하는 NetworkService
// NetworkService 이용한 네트워크 작업

let networkService = NetworkService(configuration: .default)
networkService.fetchProfile(userName: "cafielo") { result in
    switch result {
    case .success(let profile):
        print("Profile: \(profile)")
    case .failure(let error) :
        print("Error: \(error)")
    }
}


//: [Next](@next)
