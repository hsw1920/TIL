//
//  ChatListViewController.swift
//  ChatList
//
//  Created by 홍승완 on 2022/07/09.
//

import UIKit

class ChatListViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var chatList: [Chat] = Chat.list
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Data, Presentation, Layout 3가지를 구현해야함
        
        // 위임당하는 객체 self는 ChatListViewController
        collectionView.dataSource = self // data와 presentation을 책임진다.
        collectionView.delegate = self // layout을 책임진다.
        
        chatList = chatList.sorted(by: { chat1, chat2 in
            return chat1.date > chat2.date
        })
    }
}
// ChatListViewController는 UICollectionViewDataSource의 규칙을 준수할 것임
extension ChatListViewController: UICollectionViewDataSource {
    
    // collectionView에 표현되는 아이템 개수는 몇개?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatList.count
    }
    
    // cell을 어떻게 표현할지 정의해서 알려줘야함
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //return UICollectionViewCell()
        //셀을 어떻게 표현할 것인가?
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChatListCollectionViewCell", for: indexPath) as? ChatListCollectionViewCell else {
            // 캐스팅 실패시
            return UICollectionViewCell()
        }
        // 캐스팅 성공시
        let chat = chatList[indexPath.item]
        cell.configure(chat)
        
        return cell
    }
}

// 컬렉션뷰의 여러 역할 중 많은것들을 뷰컨트롤러에 위임할 수 있는데 그 중에서 레이아웃에 대한 역할을 위임해야하므로
// chatListViewControler가 UICollectionViewDelegateFlowLayout 에 대한 위임을 받는다.
// 레이아웃 설정!
extension ChatListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 100)
    }
}
