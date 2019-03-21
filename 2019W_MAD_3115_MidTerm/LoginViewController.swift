//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var txtMail: UITextField!
    @IBOutlet weak var txtPwd: UITextField!
    @IBOutlet weak var swchRemember: UILabel!
    @IBOutlet weak var swRemember: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Saving user defaults variables
        
        let RememberDefault = UserDefaults.standard
        
        
        if let email = RememberDefault.string(forKey: "email")
        {
            
            txtMail.text = email
            
            if let pwd   = RememberDefault.string(forKey: "pwd")
            {
                txtPwd.text = pwd
            }
            swRemember.isOn = true
            
        }
        else
        {
            swRemember.isOn = false
        }
        
    }

    @IBAction func btnLogIn(_ sender: UIButton)
    {
        let email = txtMail.text
        let pwd   = txtPwd.text
        
        if email == "admin@123.com"
        {
            if pwd == "123"
            {
                // Save data using user defaults
                let RememberUD = UserDefaults.standard
                if swRemember.isOn == true
                {
                    RememberUD.set(email, forKey: "email")
                    RememberUD.set(pwd, forKey: "pwd")
                }
                else
                {
                    RememberUD.removeObject(forKey: "email")
                    RememberUD.removeObject(forKey: "pwd")
                }
                // Redirecting to the other ViewController
               let sb = UIStoryboard(name: "Main", bundle: nil)
                let StuHome = sb.instantiateViewController(withIdentifier: "SBStudentEntry") as! StudentEntryViewController
                
                self.present(StuHome, animated: true)
                
            }
            
        }
        else
        {
            print("User e-mail is not registered in the system.")
            if swRemember.isOn == false
            {
                
            }
        }
        
        
    }
    
}

