//
//  QuizCell.swift
//  iQuiz3
//
//  Created by Susan Wolfgram on 11/19/15.
//  Copyright © 2015 Susan Wolfgram. All rights reserved.
//

import UIKit

class QuizCell: UITableViewCell {

    var data = [String]()
    var corAnswer = String() 
    @IBOutlet weak var quizimage: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
