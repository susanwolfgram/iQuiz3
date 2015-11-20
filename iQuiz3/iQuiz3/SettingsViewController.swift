//
//  SettingsViewController.swift
//  iQuiz3
//
//  Created by Susan Wolfgram on 11/19/15.
//  Copyright © 2015 Susan Wolfgram. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    var newQuiz = [AnyObject]()
    @IBOutlet weak var urlTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.urlTextField.text = "http://tednewardsandbox.site44.com/questions.json"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func downloadNewQuestions(sender: AnyObject) {
        let newURL = self.urlTextField.text
        let sessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        let URL = NSURL(string: "http://tednewardsandbox.site44.com/questions.json")
        let request = NSMutableURLRequest(URL: URL!)
        request.HTTPMethod = "GET"
        let task = session.dataTaskWithRequest(request) {
            (data, response, error) -> Void in
            let statusCode = (response as! NSHTTPURLResponse).statusCode
            print("URL Session Task Succeeded: HTTP \(statusCode)")
            
            do {
                self.newQuiz = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments) as! [AnyObject]
                print(self.newQuiz)
                //let nav = self.navigationController as! Nav
                //nav.newQuiz = self.newQuiz
                //print(nav.newQuiz)
                
                
                //var view = (self.presentingViewController!.navigationController as! Nav)
                let navController : Nav = self.view.window?.rootViewController as! Nav
                navController.newQuiz = self.newQuiz as NSArray as [AnyObject]
//                print(navController.newQuiz)
//                print("1234")
                
                
                /*
                let jsonObj = self.newQuiz as! NSArray
                
                for subject in jsonObj {
                    
                    let title = subject["title"]!
                    print("\(title)")
                    let desc = subject["desc"]
                    print("\(desc)")
                    let questions = subject["questions"]
                    print("\(questions)")
                    
                    for question in questions as! NSArray{
                        let answers = question["answers"]
                        let answer = question["answer"]
                        let text = question["text"]
                        
                        print("Answer: \(answer)")
                        print ("Text: \(text)")
                        for choice in answers as! NSArray{
                            print("Choices: \(choice)")
                        }
                    }
                */
                
                //UIApplication.sharedApplication().windows.
                //view = self.newQuiz
                //print(view)
                
                
//                QuizTableTableViewController().newQuiz = self.newQuiz
//                print(QuizTableTableViewController().newQuiz)
            } catch {
                
            }
            
        }
        task.resume() 
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
