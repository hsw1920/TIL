//
//  SymbolRollerViewController.swift
//  SymbolRoller
//
//  Created by 홍승완 on 2022/07/06.
//

import UIKit

class SymbolRollerViewController: UIViewController {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    //IBOutlet과 IBAction
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    // 메모리에 올라갔을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        button.tintColor = UIColor.systemPink
        // TO-DO
        // - 심볼에서, 하나를 임의로 추출해서,
        // - 이미지와 텍스트를 설정을 한다.
        
        // String? 를 !를 통해 강제언래핑
        reload()
    }
    
    // 스크린 보이기 직전
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // 스크린 보이고 난 직후
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    func reload() {
        let symbol = symbols.randomElement()!
        imageView.image = UIImage(systemName: symbol)
        label.text=symbol
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        reload()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
