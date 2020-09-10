//
//  QuizViewController.swift
//  Quizzler-iOS13
//
//  Created by Lambda_School_Loaner_219 on 9/8/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    // MARK: - class attributes
    var quizBrain = QuizBrain()

    
    //MARK: - IBoutlets and IBactions

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    
    @IBAction func answerButtonClicked(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        var answerColor = quizBrain.checkAnswer(userAnswer!)
        sender.backgroundColor = answerColor
        quizBrain.incrementOrResetCurrentQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        //updateUI()
        
        
        
    }
    
    @IBOutlet weak var progressBarView: UIProgressView!
    
    
    @IBOutlet weak var trueButton: UIButton!
    
    
    @IBOutlet weak var falseButton: UIButton!
    
    
    //MARK: - Class Methods
    @objc func updateUI() {
        
        //questionTextLabel.text = quizBrain.quiz[quizBrain.questionNumber].question
        questionTextLabel.text = quizBrain.getQuestionText()
       trueButton.backgroundColor = UIColor.clear
      falseButton.backgroundColor = UIColor.clear
    progressBarView.progress = quizBrain.getProgress()
        if progressBarView.progress == 0.0 {
            scoreLabel.text = "Score: 0"
        } else {
    scoreLabel.text = "Score: \(quizBrain.getScore())"
        }
        
    
        
    }
    

        
    

    

    
    
    
    //MARK: - View Life Cycle functions
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    

    

 

}
