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
        collectionView.delegate = self // 위임자
        
        // nav바 title 코드로 변경하기
        navigationController?.navigationBar.topItem?.title = "Apple Framework!!!"
        
        if let flowlayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowlayout.estimatedItemSize = .zero
        }
        
        collectionView.contentInset = UIEdgeInsets(top: 20, left: 16, bottom: 0, right: 16)
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
        let padding: CGFloat = 16
        
        ///
        ///
        //collectionView의 너비 : 3열
        let width = (collectionView.bounds.width - interItemSpacing * 2 - padding * 2) / 3
        
        //4열
        //let width = (collectionView.bounds.width - interItemSpacing * 3 - padding * 2) / 4

        //2열
        //let width = (collectionView.bounds.width - interItemSpacing * 1 - padding * 2) / 2
        ///
        ///
        
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

extension FrameworkListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let framework = list[indexPath.item]
        print(">>> selected: \(framework.name)")
    }
}
