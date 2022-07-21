//
//  NewsFeedViewController.swift
//  InstaSearchView
//
//  Created by 홍승완 on 2022/07/21.
//

import UIKit

class NewsFeedViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    // Data, Presentation, Layout
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        if let flowlayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowlayout.estimatedItemSize = .zero
        }
        
    }
}

extension NewsFeedViewController: UICollectionViewDataSource {
    // 사진 몇개 보여줄꺼야?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 24
    }
    // 어디서 갖고올꺼야?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCell else {
            return UICollectionViewCell()
        }
        //cell.configure()
        let imageName = "animal\(indexPath.item+1)"
        cell.configure(imageName)
        return cell
    }
}

extension NewsFeedViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 4:3 너비:높이
        //
        let width = collectionView.bounds.width
        let height = width * 3/4 + 60
        return CGSize(width: width, height: height)
    }
}
