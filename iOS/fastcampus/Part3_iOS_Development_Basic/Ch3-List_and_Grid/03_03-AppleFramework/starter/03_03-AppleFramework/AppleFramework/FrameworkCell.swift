//
//  FrameworkCell.swift
//  AppleFramework
//
//  Created by 홍승완 on 2022/07/16.
//

import UIKit

class FrameworkCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.numberOfLines = 1
        nameLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configure(_ framework: AppleFramework) {
        thumbnailImageView.image = UIImage(named: framework.imageName)
        nameLabel.text = framework.name
    }
    
    
    
    
}
