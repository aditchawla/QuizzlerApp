//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionlabel: UILabel!
    @IBOutlet weak var ProgressBar: UIProgressView!
    @IBOutlet weak var FalseButton: UIButton!
    @IBOutlet weak var TrueButton: UIButton!
    
    
    
   
    var quizbrain=QuizBrain()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UpdateUI()
    }


    @IBAction func answerbuttonpressed(_ sender: UIButton) {
        
        let UserAnswer=sender.currentTitle!//if the sender pressed true or false
        quizbrain.checkanswer(UserAnswer)
        if UserAnswer==ActualAnswer{
            sender.backgroundColor=UIColor.green
        }
        else{
            sender.backgroundColor=UIColor.red
        }
        if(questionnumber + 1<=quiz.count){
        questionnumber+=1
        }
        else{
            questionnumber=0
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
    }
        @objc func UpdateUI(){
        questionlabel.text=quiz[questionnumber].text
        TrueButton.backgroundColor=UIColor.clear
        FalseButton.backgroundColor=UIColor.clear
        
            ProgressBar.progress=Float(questionnumber+1)/Float(quiz.count)
            
        
        
    }
}
//progress conveys the progress to the user, its an object
//progress bar is our outlet property for the bar
//progresstintcolor gives the color for he part filled by the user
