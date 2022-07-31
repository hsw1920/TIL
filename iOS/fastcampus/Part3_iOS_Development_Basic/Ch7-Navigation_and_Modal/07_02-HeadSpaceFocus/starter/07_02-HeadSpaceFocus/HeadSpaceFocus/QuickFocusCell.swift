//
//  QuickFocusCell.swift
//  HeadSpaceFocus
//
//  Created by 홍승완 on 2022/07/30.
//

import UIKit

class QuickFocusCell: UICollectionViewCell {
    
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(_ quickfocus: QuickFocus) {
        thumbnailImageView.image = UIImage(named: quickfocus.imageName)
        titleLabel.text = quickfocus.title
        descriptionLabel.text = quickfocus.description
        
    }
    
    
}
