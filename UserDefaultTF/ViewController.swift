//
//  ViewController.swift
//  UserDefaultTF
//
//  Created by WEMA on 03/02/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let saveEmailInput = UserDefaults.standard.object(forKey: "UserEmail"){
            emailTF.text = saveEmailInput as? String
        }
    }
    

    
    @IBAction func submitBtn(_ sender: UIButton) {
        
        let emailInput = emailTF.text
        _ = passwordTF.text
        
        if UserDefaults.standard.string(forKey: "UserEmail") == nil{
            UserDefaults.standard.setValue(emailInput, forKey: "UserEmail")
        }
        
        let secondView = SecondViewController(nibName: "SecondViewController", bundle: nil)
        navigationController?.pushViewController(secondView, animated: true)
        
        
    }
}
