//
//  AddNewUserViewController.swift
//  my Service
//
//  Created by Student14 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class AddNewUserViewController: UIViewController {
    
    // implicit
    var nameString: String? = nil
    var userString: String? = nil
    var passwordString: String? = nil

    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func saveButton(_ sender: Any) {
       //Get value From TextField
        nameString = nameTextField.text
        userString = userTextField.text
        passwordString = passwordTextField.text
        
        
        // Check space
        let intName = nameString?.characters.count
        let intUser = userString?.characters.count
        let intPassword = passwordString?.characters.count
        
        if (intName==0)||(intUser==0)||(intPassword==0) {
            // Have space
            print("Have space")
        }else{
        
            print("No space")
        
        }
        
    } //save button
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("This is AddNewUser")
        // Do any additional setup after loading the view.
    } // mainMethod

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // didReceiveMethod
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

} // mainclass
