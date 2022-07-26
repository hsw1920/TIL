//
//  FrameworkListViewController.swift
//  AppleFramework
//
//  Created by joonwon lee on 2022/04/24.
//

import UIKit

class FrameworkListViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let list: [AppleFramework] = AppleFramework.list
    
    //AppleFramework을 Hashable하도록 프로토콜을 사용함 => <Section, AppleFramework>!,
    var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    
    // typealias(== #define)를 통해 Item을 AppleFramework대신 쓰도록함
    typealias Item = AppleFramework
    
    enum Section { //enum 자체가 hashable함! -> 각각의 구분자들이 해싱이 되는지?
        case main
    }
    
    // [section [item]] [section [item]] [section [item]]
    // section에 대한 구분타입
    // item의 타입에 대해 따로 정의해주어야함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        navigationController?.navigationBar.topItem?.title = "☀️ Apple Frameworks"
        
        // Presentation, Data, Layout
        
        //diffable datasource
        // - Presentation
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FrameworkCell", for: indexPath) as? FrameworkCell else {
                // 만들어지지않았을 때는 return nil을 한다.
                return nil
            }
            // cell이 캐스팅이 되면은 아래와같이 cell을 return 시킨다.
            // let data = datalist[indexPath.item] => item이 된다.
            cell.configure(item)
            return cell;
        })
        
        // snapshot
        // - Data
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        snapshot.appendItems(list, toSection: .main) // list라는 item들 집합을 .main이라는 section에 넣는다
        dataSource.apply(snapshot) // dataSource에 snapshot을 적용한다
        
        // compositional Layout
        // - Layout
        collectionView.collectionViewLayout = layout()
        
    }
    
    private func layout() -> UICollectionViewCompositionalLayout {
        //item
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.33), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize) //4. itemSize필요함
        
        //group
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(0.33))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 3) // 3. group만들려니 안에 넣을item필요함, groupSize도 필요함
        
        //section
        let section = NSCollectionLayoutSection(group: group) // 2. section만들려니 group필요함
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16)
        //layout
        let layout = UICollectionViewCompositionalLayout(section: section) // 1. layout만들려니 section필요함
        return layout
    }
    
}

extension FrameworkListViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let framework = list[indexPath.item]
        print(">>> selected: \(framework.name)")
    }
}
