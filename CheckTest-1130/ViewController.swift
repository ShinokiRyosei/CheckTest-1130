//
//  ViewController.swift
//  CheckTest-1130
//
//  Created by ShinokiRyosei on 2016/11/26.
//  Copyright © 2016年 ShinokiRyosei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textField: UITextField!
    
    let userDefaults: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        
        super.viewDidLoad()
        textField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let str: String = userDefaults.string(forKey: "text") {
            textField.text = str
            
        }
        textField.becomeFirstResponder()
    }
    
    @IBAction func selectSave(sender: UIButton) {
        if let str: String = textField.text {
            userDefaults.set(str, forKey: "text")
        }
    }
    
    // Close keyboard if return key is tapped.
    // Returキーでキーボードを閉じる
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
    
}

