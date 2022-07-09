//
//  StockRankCollectionViewCell.swift
//  StockRank
//
//  Created by 홍승완 on 2022/07/07.
//

import UIKit

class StockRankCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var rankLabel: UILabel!
    
    @IBOutlet weak var companyIconImageView: UIImageView!
    
    @IBOutlet weak var companyNameLabel: UILabel!
    
    @IBOutlet weak var diffLabel: UILabel!
    
    @IBOutlet weak var companyPriceLabel: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyNameLabel.text = stock.name
        companyIconImageView.image = UIImage(named: stock.imageName)
        companyPriceLabel.text = "\(convertToCurrencyFormat(price: stock.price)) 원"
        diffLabel.text = "\(stock.diff)%"
        
            
        let color: UIColor
        if stock.diff > 0 {
            color = UIColor.systemRed
        } else {
            color = UIColor.systemBlue
        }
        diffLabel.textColor = color
        
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal // 10진수
        numberFormatter.maximumFractionDigits = 0 //소수점관련 보여주는것을 없앤다.
        let result = numberFormatter.string(from: NSNumber(value: price))!
        return result
        
    }
    
    
    
}
