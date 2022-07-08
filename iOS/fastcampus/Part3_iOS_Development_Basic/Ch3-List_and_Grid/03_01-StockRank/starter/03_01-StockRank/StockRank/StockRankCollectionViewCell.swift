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
        companyPriceLabel.text = "\(stock.price) 원"
        diffLabel.text = "\(stock.diff)%"
    }
    
    
    
    
}
