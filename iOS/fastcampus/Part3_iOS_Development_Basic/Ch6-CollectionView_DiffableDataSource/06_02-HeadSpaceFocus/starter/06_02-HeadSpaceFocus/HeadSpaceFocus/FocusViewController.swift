//
//  FocusViewController.swift
//  HeadSpaceFocus
//
//  Created by 홍승완 on 2022/07/26.
//

import UIKit

class FocusViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var refreshButton: UIButton!
    
    var curated: Bool = false
    var items: [Focus] = Focus.list
    
    //Section과 Item의 타입을 지정해줘야함
    typealias Item = Focus
    enum Section {
        case main
        // section이 많아지면
        // case otherSection1..
        // case otherSection2..
    }
    var datasource: UICollectionViewDiffableDataSource<Section, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        refreshButton.layer.cornerRadius = 10
        // Presentation, Data, Layout
        datasource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FocusCell", for: indexPath) as? FocusCell else {
                return nil
            }
            cell.configure(item) // 각 cell에 item을 넣어서 구성해주어야함
            return cell
        })
        
        // Snapshot
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(items, toSection: .main)
        datasource.apply(snapshot)
        
        // Layout
        collectionView.collectionViewLayout = layout() // layout설정은 기니깐 따로 private layout() 함수로 만들어준다
        
        updateButtonTitle()
    }
    
    //layout()함수는 UICollectionViewCompositionalLayout의 자료형(layout)으로 return해준다
    private func layout() -> UICollectionViewCompositionalLayout {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50) ) //.fractionalWidth(1) -> iPhone의 Width를 100% 그대로 쓰겠다.
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        // "section간 spacing" + "내부 group간 spacing"
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
        section.interGroupSpacing = 10
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    // viewDidLoad와 refreshButtonTapped에 같은 코드가 있으므로 함수로 정리해준다.
    // DRY 원칙 -> Do not Repeat Yourself
    func updateButtonTitle() {
        // 버튼의 이름을 바꿔줌
        let title = curated ? "See All" : "See Recommendation"
        refreshButton.setTitle(title, for: .normal)
    }
    
    @IBAction func refreshButtonTapped(_ sender: Any) {
        curated.toggle()
        
        //toggle됨에 따라서 화면의 snapshot구성을 업데이트
        self.items = curated ? Focus.recommendations : Focus.list
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(items, toSection: .main)
        datasource.apply(snapshot)
        
        updateButtonTitle()
    }
}

