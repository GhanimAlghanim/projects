//
//  CreateGoalVC.swift
//  goalPost-app
//
//  Created by TheNextG on 1/1/18.
//  Copyright © 2018 TheNextG. All rights reserved.
//

import UIKit


class CreateGoalVC: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var LongTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goalType: GoalType = .shortTerm
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindtokeyboard()
        shortTermBtn.setSelectedColor()
        LongTermBtn.setDeselctedColor()
        goalTextView.delegate = self

        // Do any additional setup after loading the view.
    }

    @IBAction func shortTermPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermBtn.setSelectedColor()
        LongTermBtn.setDeselctedColor()
    }
    @IBAction func longTermBtn(_ sender: Any) {
        goalType = .longTerm
        LongTermBtn.setSelectedColor()
        shortTermBtn.setDeselctedColor()
    }
    
    @IBAction func nextBtnPressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishGoalVC = storyboard?.instantiateViewController(withIdentifier: "createGoalContoller") as? createGoalContoller else {return}
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            // the next line is used to dismiss the current vew Controller and present the next controller at the same time so when you create a goal at the end you do not need to go back to the current view. see lecture 132
            presentingViewController?.presentSeconderyDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    

    

}
