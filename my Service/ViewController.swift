//
//  ViewController.swift
//  my Service
//
//  Created by Student14 on 6/15/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Explicit
    var myString = ""
    var strUser: String? = nil
    var strPassword: String? = nil

    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    @IBAction func loginButtom(_ sender: Any) {
        
        // get value From Textfield
        strUser = userTextField.text
        strPassword = passwordTextField.text
        //Check space
        if strUser?.characters.count == 0 || strPassword?.characters.count == 0 {
                alertLabel.alpha = 1
        }else {
            alertLabel.alpha = 0
            let strUrl = "http://androidthai.in.th/snru/getUserWhereChaidan.php?isAdd=true&User=" + strUser! + ""
           print("strUrl-->\(strUrl)")
            readJSON(strURL: strUrl)
            
        } // if
        
        
        
        
    } // loginButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        // Process connected Http connect via JASON
        let urlPHP = "http://swiftcodingthai.com"
        // Change String to url String
        let myURL = URL(string: urlPHP)
        let request = NSMutableURLRequest(url:myURL!)
        // Create thread for URL
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            // แสดงค่าที่รับจาก server ผ่าน response แสดง error ผ่น error
            data, responde, error in
            if error != nil {
                // Error ตรงนี้ไม่เป็นไร ปล่อยไปก่อน มาสเตอร์ก็เป็นเหมือนกัน
                print("Error-->\(error)")
            } else {
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding:String.Encoding.utf8.rawValue)
                    let strJSON=dataString as Any
                    print("strJSON-->\(strJSON)")
                
                
                }
            }
            
            }
        task.resume()
        */
        // ปิดที่เรียกใช้ swiftthai.com
        // Do any additional setup after loading the view, typically from a nib.
    } // main method
    
    func readJSON(strURL: String) -> Void {
        
        // Process connected Http connect via JASON
        let urlPHP = strURL
        // Change String to url String
        let myURL = URL(string: urlPHP)
        let request = NSMutableURLRequest(url:myURL!)
        // Create thread for URL
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            // แสดงค่าที่รับจาก server ผ่าน response แสดง error ผ่น error
            data, responde, error in
            if error != nil {
                // Error ตรงนี้ไม่เป็นไร ปล่อยไปก่อน มาสเตอร์ก็เป็นเหมือนกัน
                print("Error-->\(String(describing: error))")
            } else {
                if let unwrappedData = data {
                    let dataString = NSString(data: unwrappedData, encoding:String.Encoding.utf8.rawValue)
                    let strJSON=dataString as Any
                    print("strJSON-->\(strJSON)")
                }
            }
        }
        task.resume()
    } // readJSON function
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    } // didReceive


} // main class

