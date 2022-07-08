//
//  StockRankViewController.swift
//  StockRank
//
//  Created by 홍승완 on 2022/07/07.
//

import UIKit

class StockRankViewController: UIViewController {

    
    let stockList: [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // Data, Presentation, Layout
    // Data - 어떤 데이터?
    // Presentation - 셀을 어떻게 표현?
    // Layout - 셀을 어떻게 배치?
    
    // protocol - 수행해야하는 규칙이 있음. => 특정 객체가 규칙을 수행해야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // dataSource, delegate는 protocol
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}

extension StockRankViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StockRankCollectionViewCell", for: indexPath) as? StockRankCollectionViewCell else {
            return UICollectionViewCell()
        }
        let stock = stockList[indexPath.item]
        cell.configure(stock)
        return cell
        
        //return UICollectionViewCell()
    }
}
extension StockRankViewController: UICollectionViewDelegate {
    
}
extension StockRankViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 80)
    }
}
