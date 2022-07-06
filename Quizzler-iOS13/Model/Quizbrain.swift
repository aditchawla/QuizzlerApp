//
//  Quizbrain.swift
//  Quizzler-iOS13
//
//  Created by Adit Chawla on 22/05/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain{
    let quiz=[
        Questions(text: "four plus 5 is equal to 9", answer: "true"),
        Questions(text: "five - three is greater than one", answer: "true"),
        Questions(text: "Three plus eight is less than 5",  answer: "false"),
        ]
    var questionnumber=0
    
    func checkanswer(_ useranswer:String){
        if useranswer==quiz[questionnumber].answer{
            //user got it right
            
        }
        else{
            //user got it wrong
            
        }
            
        
    }
}
