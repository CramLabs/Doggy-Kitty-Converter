//
//  ViewController.swift
//  Age Of Cupcake
//
//  Created by Alex Tuazon on 9/17/14.
//  Copyright (c) 2014 KTKTC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogYearsTextField: UITextField!
    
    @IBOutlet weak var catYearsTextField: UITextField!
    
    @IBOutlet weak var displayYourDogYears: UILabel!
    
    @IBOutlet weak var displayYourCatYears: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dogYearsButtonPressed(sender: AnyObject) {
            // Dog Button Code
            let inputFromUserForDog = dogYearsTextField.text
            let turnMeIntoAnInteger = inputFromUserForDog.toInt()
            var integerFromTextField = turnMeIntoAnInteger!
            let globalAge = 7
            integerFromTextField *= globalAge
            displayYourDogYears.hidden = false
            let stringWithUpdatedAge = "You are " + "\(integerFromTextField)" + " in dog years"
            displayYourDogYears.text = stringWithUpdatedAge
            //turnMeIntoAnInteger is used to equal the globalAge
            // Code for when user forgot to put anything it does not crash but just displays the global age variable.
            if stringWithUpdatedAge == "" {
                displayYourDogYears.text = "\(globalAge)"
            }
        
        
        
        
        
        }
    
    @IBAction func catYearsButtonPressed(sender: AnyObject) {
            // Cat Button Code
            let inputFromUserForCat = catYearsTextField.text
            let turnMeIntoAnInteger = inputFromUserForCat.toInt()
            var integerFromTextField = turnMeIntoAnInteger!
            let globalAge = 7
            integerFromTextField *= globalAge
            displayYourCatYears.hidden = false
            let stringWithUpdatedAge = "You are " + "\(integerFromTextField)" + " in cat years"
            displayYourCatYears.text = stringWithUpdatedAge
            //turnMeIntoAnInteger is used to equal the globalAge
            // Code for when user forgot to put anything it does not crash but just displays the global age variable.
            if stringWithUpdatedAge == "" {
                displayYourCatYears.text = "\(globalAge)"
            }
        }


}

