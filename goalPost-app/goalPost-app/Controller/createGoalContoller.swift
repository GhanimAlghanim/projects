//
//  createGoalContoller.swift
//  goalPost-app
//
//  Created by TheNextG on 1/3/18.
//  Copyright © 2018 TheNextG. All rights reserved.
//

import UIKit
import CoreData

class createGoalContoller: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointGoalBtn: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType =  type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindtokeyboard()
        pointGoalBtn.delegate = self

        // Do any additional setup after loading the view.
    }

   
    @IBAction func CreateGoalBtnPrese(_ sender: Any) {
        if pointGoalBtn.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
        
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointGoalBtn.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
    
}
