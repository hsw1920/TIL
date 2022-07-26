//
//  FocusCell.swift
//  HeadSpaceFocus
//
//  Created by 홍승완 on 2022/07/26.
//

import UIKit

class FocusCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = UIColor.systemIndigo
        contentView.layer.cornerRadius = 10
        
    }
    
    func configure(_ item: Focus) {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        thumbnailImageView.image = UIImage(systemName: item.imageName)?.withRenderingMode(.alwaysOriginal)
        //?.withRenderingMode(.alwaysOriginal)없이 쓰면 기본 tint값 컬러를 쓰게됨
    }
    
    
    
}
