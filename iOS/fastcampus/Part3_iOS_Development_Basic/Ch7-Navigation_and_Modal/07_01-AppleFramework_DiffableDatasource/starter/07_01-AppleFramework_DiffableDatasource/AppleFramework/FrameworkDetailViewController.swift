//
//  FrameworkDetailViewController.swift
//  AppleFramework
//
//  Created by 홍승완 on 2022/07/29.
//

import UIKit
import SafariServices
class FrameworkDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var framework: AppleFramework = AppleFramework(name: "Unknown", imageName: "", urlString: "", description: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        imageView.image = UIImage(named: framework.imageName)
        titleLabel.text = framework.name
        descriptionLabel.text = framework.description
        
    }
    
    @IBAction func learnMoreTapped(_ sender: Any) {
        guard let url = URL(string: framework.urlString) else {
            return
        }
        // SFSafariViewController는 SafariServices를 import해야함
        let safari = SFSafariViewController(url: url)
        present(safari, animated: true)
    }
}
