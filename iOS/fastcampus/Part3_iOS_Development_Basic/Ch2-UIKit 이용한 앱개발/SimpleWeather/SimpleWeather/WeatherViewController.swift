//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 홍승완 on 2022/07/06.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let cities = ["Seoul", "Tokyo", "LA", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        cityLabel.text = cities.randomElement()!
        let imageName = weathers.randomElement()!
        
        // withRenderingMode에서 .alwaysOriginal로 하지 않으면 템플릿형태로 보여져서
        // 이미지가 구리므로 .alwaysOriginal로 써서 본래 이미지의 색을 가져와야 한다.
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemp)°"
    }

}
