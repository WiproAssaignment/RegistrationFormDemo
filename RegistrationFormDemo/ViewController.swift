//
//  ViewController.swift
//  RegistrationFormDemo
//
//  Created by Admin on 3/16/23.
//  Copyright © 2023 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.configureUsernameAndPwdTFs()
    }
    
    func configureUsernameAndPwdTFs() {
        usernameTF.delegate = self
        passwordTF.delegate = self
    }

    @IBAction func submitButtonTapped(_ sender: Any) {
        
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if textField == usernameTF {
            
            return true
            
        } else if textField == passwordTF {
            
            return true
        }
        return true
    }
}

