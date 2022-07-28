//
//  BannerCell.swift
//  SpotifyPaywall
//
//  Created by joonwon lee on 2022/04/30.
//

import UIKit

class BannerCell: UICollectionViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 16 // BannerCell의 cornerRadius를 주어서 모서리를 둥글게 설정
    }
    
    func configure(_ info: BannerInfo){
        titleLabel.text = info.title
        descriptionLabel.text = info.description
        thumbnailImageView.image = UIImage(named: info.imageName)
        
    }
    
}
