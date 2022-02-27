//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
  
    @IBAction func choiceSelected(_ sender: UIButton) {
        let selected = sender.currentTitle!
        storyBrain.nextStory(selected: selected)
        updateUI()
    }
    
    func updateUI(){
        var storyIdx = storyBrain.idx
        print(storyIdx)
        storyLabel.text=storyBrain.stories[storyIdx].title
        choice1Button.setTitle(storyBrain.stories[storyIdx].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyIdx].choice2, for: .normal)
    }

}

