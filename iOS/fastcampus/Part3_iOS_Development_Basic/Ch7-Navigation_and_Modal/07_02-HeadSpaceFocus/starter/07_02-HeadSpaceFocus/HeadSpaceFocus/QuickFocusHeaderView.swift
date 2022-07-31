//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by 홍승완 on 2022/07/31.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
        
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title: String){
        titleLabel.text = title
    }
    
}
