//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Lambda_School_Loaner_219 on 9/9/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct QuizBrain {
    var questionNumber = 0
    var questionIndex = 0
    var score = 0
    let quiz = [
        
        
        Question(q: "A slug's blood is green.", a: "True"),
              Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
              Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
              Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
              Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
              Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
              Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
              Question(q: "Google was originally called 'Backrub'.", a: "True"),
              Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
              Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
              Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
              Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")


    
    ]
    
   mutating  func checkAnswer( _ userAnswer:String) -> UIColor {
       
        if userAnswer == quiz[questionNumber].answer {
            self.score += 1 //increase player score if they are correct
            return UIColor.green
            
            
            
        } else {
            self.score -= 1 //decrement player score if they are wrong
            return UIColor.red 
        }
        
    }
    
  mutating  func incrementOrResetCurrentQuestion(){
    if questionNumber + 1 < quiz.count  {
        self.questionNumber += 1
    } else {
        self.questionNumber = 0
    }
        
    }
    
    func getQuestionText() -> String {
        return self.quiz[questionNumber].question
    }
    
    func getProgress() -> Float {
        let increment = 1.0 / Float(self.quiz.count)
        var moveBy = increment * Float(questionNumber)
        return moveBy 
        
    }
    
    func getScore() -> Int {
        return self.score 
        
    }
    
    
    

}
