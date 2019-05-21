//
//  ViewController.swift
//  3rd
//
//  Created by MindHack on 09/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        errorLabel.isHidden = true
        errorLabel.text = "Mai baga o fisa"
        
        //        emailTextField.text = "email@me.com"
        //        passwordTextField.text = "pass"
    }
    
    
    @IBAction func doLogin(_ sender: Any) {
        //    print(emailTextField.text,
        //          passwordTextField.text)
        
        
        if emailTextField.text == "email@me.com",
            passwordTextField.text == "pass" {
            //autentificare valida
            errorLabel.isHidden = true
            
            print("Al doilea comit")
            
            
            if let formVC = self.storyboard?.instantiateViewController(withIdentifier: "FormVC") {
//                self.present(formVC, animated: true, completion: nil)
                self.navigationController?.pushViewController(formVC, animated: true)
            }
            
        }  else {
            //autentificare invalida
            errorLabel.isHidden = false
        }
        
    }
    
    
    
}


