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

    
    @IBOutlet weak var alertLabel: UILabel!
    
    
    
    
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
            alertLabel.alpha = 1
        }else{
        
            print("No space")
            alertLabel.alpha = 0
            let strMyURL = "http://androidthai.in.th/snru/addUserChaidan.php?isAdd=true&Name=" + nameString! + "&User=" + userString! + "&Password=" + passwordString! + ""
            print("strMyURL-->\(strMyURL)")
            uploadValuetoServer(strURL: strMyURL)
        }
        
    } //save button
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("This is AddNewUser")
        // Do any additional setup after loading the view.
    } // mainMethod

    func uploadValuetoServer(strURL: String) -> Void {
        // Process connected Http connect via JASON
        let urlPHP = strURL
        // Change String to url String
        let myURL = URL(string: urlPHP)
        let request1 = NSMutableURLRequest(url:myURL!)
        // Create thread for URL
        let task = URLSession.shared.dataTask(with: request1 as URLRequest){
            // แสดงค่าที่รับจาก server ผ่าน response แสดง error ผ่น error
            data, responde, error in
            if error != nil {
                // Error ตรงนี้ไม่เป็นไร ปล่อยไปก่อน มาสเตอร์ก็เป็นเหมือนกัน
                print("Error")
            } else {
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding:String.Encoding.utf8.rawValue)
                    let strJSON=dataString as Any
                    print("strJSON-->\(strJSON)")
                }
            }
            
        }
        task.resume()
    } //uploadValuetoServer function
    
    
    
    
    
    
    
    
    
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
