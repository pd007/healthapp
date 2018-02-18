//
//  ResultViewController.swift
//  HealthApp
//
//  Created by Parth Dhebar on 2/9/18.
//  Copyright © 2018 Parth Dhebar. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var moodLabel: UILabel!
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    @IBOutlet var dateofBirthLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!

    
    
    var mood: String = ""
    var fullName: String = ""
    var height: String = ""
    var weight: String = ""
    var dateofBirth: Date = Date()
    var gender: String = ""
    
    override func viewDidLoad() {
        moodLabel.text = mood
        fullNameLabel.text = fullName
        heightLabel.text = height
        weightLabel.text = weight
        dateofBirthLabel.text = dateofBirth.description
        genderLabel.text = gender
    }
    
}
