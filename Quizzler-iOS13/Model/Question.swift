//
//  Quiz.swift
//  Quizzler-iOS13
//
//  Created by Lambda_School_Loaner_219 on 9/9/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    var question:String
    var answer:String
    
    init(q:String, a:String) {
        self.question = q
        self.answer = a
    }
}
