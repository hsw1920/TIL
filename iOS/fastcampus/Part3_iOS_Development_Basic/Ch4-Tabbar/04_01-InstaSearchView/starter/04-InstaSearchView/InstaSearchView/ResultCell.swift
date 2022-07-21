//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by 홍승완 on 2022/07/20.
//

import UIKit

class ResultCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    //재사용전 준비하는 함수
    override func prepareForReuse() {
        super.prepareForReuse()
        // reset
        thumbnailImageView.image = nil
        
    }
    
    func configure(_ imageName: String){
        thumbnailImageView.image = UIImage(named: imageName)
    }
    
}
