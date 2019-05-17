//
//  FormVC.swift
//  3rd
//
//  Created by MindHack on 09/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation
import UIKit

class FormVC: UIViewController {
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
        
    }
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var technologySegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var reasonTextView: UITextView!
    @IBOutlet weak var contactDatePicker: UIDatePicker!
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        
        print(
            firstNameTextField.text,
            lastNameTextField.text,
            emailTextField.text,
            phoneTextField.text,
            
            technologySegmentedControl.selectedSegmentIndex,
            technologySegmentedControl.titleForSegment(at: technologySegmentedControl.selectedSegmentIndex),
            
            reasonTextView.text,
            
            contactDatePicker.date)
        
        
        var user: User = User()
        user.firstName = firstNameTextField.text
        user.lastName = lastNameTextField.text
        user.email = emailTextField.text
        user.phone = phoneTextField.text
        
        print("----- USER -----")
        print(user)
        
        var formData: FormData = FormData()
        formData.technology = technologySegmentedControl.selectedSegmentIndex
        formData.reason = reasonTextView.text
        formData.contactDate = contactDatePicker.date
        formData.user = user
        
        print("----- FORM DATA -----")
        print(formData)
        
        
    }
    
   
    class Technology {
        var title: String
        var uid: String
        
    }
    }
    
}
