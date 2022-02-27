//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var answer1Button: UIButton!
    @IBOutlet weak var answer2Button: UIButton!
    @IBOutlet weak var answer3Button: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {

        let userAnswer = sender.currentTitle!
        let usergGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if usergGotItRight {
            sender.backgroundColor=UIColor.green
        }else{
            sender.backgroundColor=UIColor.red
        }
        quizBrain.nextQustion()
      
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
    }
    @objc func updateUI(){
        
        answer1Button.setTitle(quizBrain.currentText(idx: 0), for: .normal)
        answer2Button.setTitle(quizBrain.currentText(idx: 1), for: .normal)
        answer3Button.setTitle(quizBrain.currentText(idx: 2), for: .normal)
        
        questionLabel.text=quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text="Score: \(quizBrain.getScore())"
        answer1Button.backgroundColor = UIColor.clear
        answer2Button.backgroundColor = UIColor.clear
        answer3Button.backgroundColor = UIColor.clear
    }

}

