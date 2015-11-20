//
//  ResultViewController.swift
//  iQuiz3
//
//  Created by Susan Wolfgram on 11/19/15.
//  Copyright © 2015 Susan Wolfgram. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var yourAnswer = String()
    var correctAnswer = String()
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if yourAnswer == correctAnswer {
            self.label1.text = "Correct!"
            self.label2.text = "You chose \(yourAnswer) which was right!"
            let nav = self.navigationController as! Nav
            nav.totalCorrectAnswers++
            print(nav.totalCorrectAnswers) 
        } else {
            self.label1.text = "Nope"
            self.label2.text = "You chose \(yourAnswer). The answer was \(correctAnswer)." 
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
