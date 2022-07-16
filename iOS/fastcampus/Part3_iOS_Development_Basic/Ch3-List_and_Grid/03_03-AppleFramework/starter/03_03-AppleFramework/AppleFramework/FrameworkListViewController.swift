//
//  FrameworkListViewController.swift
//  AppleFramework
//
//  Created by 홍승완 on 2022/07/16.
//

import UIKit

class FrameworkListViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    //만들어논 데이터를 가져옴
    let list: [AppleFramework] = AppleFramework.list
    
    // 컬렉션뷰 표현하기 위해서는 3가지!
    // Data, presentation, Layout 정의를 해주어야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}

extension FrameworkListViewController: UICollectionViewDataSource {
    
    //몇개나 셀을 표현할건지? => 데이터의 개수 -> list.count
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    //어떻게 셀을 표현할건지?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrameworkCell", for: indexPath) as? FrameworkCell else {
            return UICollectionViewCell()
        }
        let framework = list[indexPath.item]
        cell.configure(framework)
        return cell
    }
}

extension FrameworkListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // collection View의 estimate size를-> none으로 바꿔주어야함
        
        let interItemSpacing: CGFloat = 10
        
        //collectionView의 너비
        let width = (collectionView.bounds.width - interItemSpacing*2)/3
        let height = width*1.5
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
}
