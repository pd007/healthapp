//
//  HomeViewController.swift
//  HealthApp
//
//  Created by Parth Dhebar on 2/9/18.
//  Copyright © 2018 Parth Dhebar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var angryButton: UIButton!
    @IBOutlet var surprisedButton: UIButton!
    @IBOutlet var sadButton: UIButton!
    @IBOutlet var happyButton: UIButton!
    @IBOutlet var genderSegmentedControl: UISegmentedControl!
    @IBOutlet var fullNameTextField: UITextField!
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var ageDatePicker: UIDatePicker!
   
    var selectedMood = ""
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController
        resultVC.mood = selectedMood
        resultVC.fullName = fullNameTextField.text!
        resultVC.height = heightTextField.text!
        resultVC.weight = weightTextField.text!
        resultVC.dateofBirth = ageDatePicker.date
        
        if genderSegmentedControl.selectedSegmentIndex == 0 {
           resultVC.gender = "Male"
        } else {
            resultVC.gender = "Female"
        }
        
    }
    
    
    @IBAction func onMoodTap(_ sender: UIButton) {
        if sender.tag == 0 {
            selectedMood = "Angry"
            angryButton.setImage(#imageLiteral(resourceName: "angry-selected"), for: .normal)
            surprisedButton.setImage(#imageLiteral(resourceName: "surprised-outlined"), for: .normal)
            sadButton.setImage(#imageLiteral(resourceName: "sad-outlined"), for: .normal)
            happyButton.setImage(#imageLiteral(resourceName: "happy-outlined"), for: .normal)
        } else if sender.tag == 1 {
            selectedMood = "Surprised"
            angryButton.setImage(#imageLiteral(resourceName: "angry-outlined"), for: .normal)
            surprisedButton.setImage(#imageLiteral(resourceName: "surprised-selected"), for: .normal)
            sadButton.setImage(#imageLiteral(resourceName: "sad-outlined"), for: .normal)
            happyButton.setImage(#imageLiteral(resourceName: "happy-outlined"), for: .normal)
        } else if sender.tag == 2 {
            selectedMood = "Sad"
            angryButton.setImage(#imageLiteral(resourceName: "angry-outlined"), for: .normal)
            surprisedButton.setImage(#imageLiteral(resourceName: "surprised-outlined"), for: .normal)
            sadButton.setImage(#imageLiteral(resourceName: "sad-selected"), for: .normal)
            happyButton.setImage(#imageLiteral(resourceName: "happy-outlined"), for: .normal)
        } else if sender.tag == 3 {
            selectedMood = "Happy"
            angryButton.setImage(#imageLiteral(resourceName: "angry-outlined"), for: .normal)
            surprisedButton.setImage(#imageLiteral(resourceName: "surprised-outlined"), for: .normal)
            sadButton.setImage(#imageLiteral(resourceName: "sad-outlined"), for: .normal)
            happyButton.setImage(#imageLiteral(resourceName: "happy-selected"), for: .normal)
        }
    }
    

    
    @IBAction func onTapBG(_ sender: Any) {
        view.endEditing(true)
    }
    
    

}
