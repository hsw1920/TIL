//
//  WeatherManager.swift
//  Clima
//
//  Created by 홍승완 on 2022/03/12.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager{
    //http -> 보안위험  // https -> safe
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=dcdf2b67b48ee688f74769daa32754c1&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        //1. Create a URL
        if let url = URL(string: urlString){
            
            //2. Create a URLSession
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            
            //4. Start ther task
            task.resume()
        }
    }
    
    func handle(data:Data?, response: URLResponse?, error: Error?){
        if error != nil {
            print(error!)
            return
        }
        if let safeData = data{
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
    
}
